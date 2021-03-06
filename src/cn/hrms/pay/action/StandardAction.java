package cn.hrms.pay.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hrms.pay.biz.StaAudBiz;
import cn.hrms.pay.biz.StaDetBiz;
import cn.hrms.pay.biz.StandardBiz;
import cn.hrms.pay.entity.Standard;
import cn.hrms.pay.entity.StandardAudit;
import cn.hrms.pay.entity.StandardDetails;
import cn.hrms.sysset.biz.ProjectBiz;
import cn.hrms.sysset.entity.Project;
import cn.hrms.sysset.entity.Users;
import cn.hrms.util.Final;
import cn.hrms.util.Page;

@Controller("standardAction")
public class StandardAction {
	private StandardBiz standardBiz;
	private StaDetBiz staDetBiz;
	private ProjectBiz projectBiz;
	private StaAudBiz staAudBiz;
	
	/**
	 * 薪酬标准列表
	 * @param stan 薪酬标准对象
	 * @param endTime 结束时间
	 * @param currPageNo 当前页
	 * @param model 传值
	 * @return
	 */
	@RequestMapping("standardList")
	public String standardList(Standard stan, String endTime, Integer currPageNo, Model model, HttpSession session){
		//状态值为0则设为空
		if(stan.getState() != null && "0".equals(stan.getState())){
			stan.setState(null);
		}
		//时间值为字符串空则设为null
		if(stan.getTime() == ""){
			stan.setTime(null);
		}
		if(endTime == ""){
			endTime = null;
		}
		Page<Standard> page = new Page<Standard>();
		Users users = (Users) session.getAttribute("users");
		page.setTotalCount(standardBiz.stanCoun(stan, endTime, users.getRole().getName()));
		page.setPageTotalCount();
		if(currPageNo != null){
			page.setCurrPageNo(currPageNo);
		}
		page.setPageList(standardBiz.findStan(stan, endTime, users.getRole().getName(), page));
		model.addAttribute("staAudList", staAudBiz.findStaAud());
		model.addAttribute("page", page);
		model.addAttribute("stan", stan);
		model.addAttribute("endTime", endTime);
		return "jsp/pay/standard/standardList";
	}
	
	/**
	 * 新增薪酬标准
	 * @param stan 薪酬标准对象
	 * @param money 各个薪酬项目的金额
	 * @param res 标志
	 * @param model 传值
	 * @return
	 */
	@RequestMapping("standardAdd")
	public String standardAdd(Standard stan, String money[], Integer res, Model model, HttpSession session){
		List<Project> proList = projectBiz.findPro();  //查找薪酬项目
		if(res != null){
			model.addAttribute("proList", proList);
			return "jsp/pay/standard/standardAdd";
		}
		standardBiz.addStan(stan);  //添加新增标准
		for (int i = 0; i < money.length; i++) {
			staDetBiz.addStaDet(new StandardDetails(proList.get(i), money[i]));  //添加薪酬标准详情
		}
		model.addAttribute("msg", Final.addSuccess);
		return standardList(new Standard(), null, null, model, session);
	}

	/**
	 * 删除薪酬标准
	 * @param id 薪酬标准编号
	 * @return
	 */
	@RequestMapping("standardDel")
	public String standardDel(Integer id, Model model, HttpSession session){
		standardBiz.delStan(id);  //删除薪酬标准
		staDetBiz.delStaDet(id);  //删除薪酬标准详情
		staAudBiz.delStaAud(id);  //删除薪酬标准审核
		model.addAttribute("msg", Final.delSuccess);
		return standardList(new Standard(), null, null, model, session);
	}
	
	/**
	 * 修改薪酬标准
	 * @param stan 薪酬标准对象
	 * @param money 各个薪酬项目的金额
	 * @param res 标志
	 * @param model 传值
	 * @return
	 */
	@RequestMapping("standardUpd")
	public String standardUpd(Standard stan, String money[], Integer res, Model model, HttpSession session){
		if(res != null){
			model.addAttribute("stan", standardBiz.findStanById(stan.getId()));
			model.addAttribute("staDetList", staDetBiz.findStanById(stan.getId()));
			return "jsp/pay/standard/standardUpd";
		}
		standardBiz.updStan(stan);  //修改薪酬标准
		int minStaDetId = staDetBiz.findStaDetByMin(stan.getId());
		for (int i = 0; i < money.length; i++) {  //循环修改薪酬详情
			stan = new Standard(minStaDetId+i);
			staDetBiz.updStaDet(new StandardDetails(minStaDetId+i, money[i]));
		}
		model.addAttribute("msg", Final.updSuccess);
		return standardList(new Standard(), null, null, model, session);
	}
	
	/**
	 * 薪酬详情
	 * @param id 薪酬标准编号
	 * @param model 传值
	 * @return
	 */
	@RequestMapping("standardDetail")
	public String standardDetail(Integer id, Model model){
		model.addAttribute("stan", standardBiz.findStanById(id));
		model.addAttribute("staDet", staDetBiz.findStanById(id));
		model.addAttribute("staAud", staAudBiz.findStaAudById(id));
		return "jsp/pay/standard/standardDetail";
	}
	
	/**
	 * 薪酬标准审核
	 * @param stan 薪酬标准对象
	 * @param staAud 薪酬详情对象
	 * @param res 标志
	 * @param model 传值
	 * @return
	 */
	@RequestMapping("standardAudit")
	public String standardAudit(Standard stan, StandardAudit staAud, Integer res, Model model, HttpSession session){
		if(res == null){
			standardBiz.updStan(stan);  //修改薪酬标准状态
			staAud.setStandard(stan);
			staAudBiz.addStaAud(staAud);  //添加薪酬审核
			model.addAttribute("msg", Final.auditSuccess);
			return standardList(new Standard(), null, null, model, session);
		}
		model.addAttribute("stan", standardBiz.findStanById(stan.getId()));
		model.addAttribute("staDet", staDetBiz.findStanById(stan.getId()));
		return "jsp/pay/standard/standardAudit";
	}

	public void setStandardBiz(StandardBiz standardBiz) {
		this.standardBiz = standardBiz;
	}

	public void setStaDetBiz(StaDetBiz staDetBiz) {
		this.staDetBiz = staDetBiz;
	}

	public void setProjectBiz(ProjectBiz projectBiz) {
		this.projectBiz = projectBiz;
	}

	public void setStaAudBiz(StaAudBiz staAudBiz) {
		this.staAudBiz = staAudBiz;
	}

}
