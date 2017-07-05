package cn.hrms.sysset.action;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hrms.sysset.biz.PropertyBiz;
import cn.hrms.sysset.entity.Property;
import cn.hrms.util.Final;
import cn.hrms.util.Page;

@Controller("propertyAction")
public class PropertyAction {
	private PropertyBiz propertyBiz;
	
	/**
	 * 公共属性列表
	 * @param pro 属性对象
	 * @param currPageNo 当前页
	 * @param model 传值
	 * @return
	 */
	@RequestMapping("propertyList")
	public String propertyList(Property pro, Integer currPageNo, Model model){
		Page<Property> page = new Page<Property>();
		page.setTotalCount(propertyBiz.proCount(pro));
		page.setPageTotalCount();
		if(currPageNo != null){
			page.setCurrPageNo(currPageNo);
		}
		page.setPageList(propertyBiz.findPro(pro, page));
		model.addAttribute("pro", pro);
		model.addAttribute("page", page);
		return "jsp/sysset/property/propertyList";
	}
	
	/**
	 * 新增公共属性
	 * @param pro 属性对象
	 * @param res 标志
	 * @param model 传值
	 * @return
	 */
	@RequestMapping("propertyAdd")
	public String propertyAdd(Property pro, Integer res, Model model){
		if(res != null){  //res如果为空则新增，不为空则直接跳转到新增页面
			return "jsp/sysset/property/propertyAdd";
		}else{
			propertyBiz.addPro(pro);
			model.addAttribute("msg", Final.addSuccess);
			return propertyList(new Property(), 1, model);
		}
	}
	
	/**
	 * 删除公共属性
	 * @param id 属性编号
	 * @return
	 */
	@RequestMapping("propertyDel")
	public String propertyDel(Integer id, Integer currPageNo ,Model model){
		propertyBiz.delPro(id);
		model.addAttribute("msg", Final.delSuccess);
		return propertyList(new Property(), currPageNo, model);
	}
	
	/**
	 * 修改公共属性
	 * @param pro 属性对象
	 * @param res 标志
	 * @param model 传值
	 * @return
	 */
	@RequestMapping("propertyUpd")
	public String propertyUpd(Property pro, Integer res, Model model){
		if(res != null){
			model.addAttribute("pro", propertyBiz.findProById(pro.getId()));
			return "jsp/sysset/property/propertyUpd";
		}else{
			propertyBiz.updPro(pro);
			model.addAttribute("pro", null);
			model.addAttribute("msg", Final.updSuccess);
			return propertyList(new Property(), 1, model);
		}
	}
	
	/**
	 * 公共属性详情
	 * @param id 属性编号
	 * @param model 传值
	 * @return
	 */
	@RequestMapping("propertyDetail")
	public String propertyDetail(Integer id, Model model){
		model.addAttribute("pro", propertyBiz.findProById(id));
		return "jsp/sysset/property/propertyDetail";
	}

	public void setPropertyBiz(PropertyBiz propertyBiz) {
		this.propertyBiz = propertyBiz;
	}

}
