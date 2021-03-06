package cn.hrms.pay.biz;

import java.util.List;

import cn.hrms.pay.entity.Standard;
import cn.hrms.util.Page;

public interface StandardBiz {
	
	/**
	 * 根据条件查找薪酬标准
	 * @param stan 条件
	 * @param page 分页
	 * @return
	 */
	public List<Standard> findStan(Standard stan, String endTime, String role, Page<Standard> page);
	
	/**
	 * 根据编号查找薪酬标准
	 * @param id 薪酬标准详情
	 * @return
	 */
	public Standard findStanById(Integer id);
	
	/**
	 * 根据条件查找薪酬标准总数
	 * @param stan 条件
	 * @return
	 */
	public int stanCoun(Standard stan, String endTime, String role);
	
	/**
	 * 新增薪酬标准
	 * @param stan 薪酬标准信息
	 * @return
	 */
	public int addStan(Standard stan);
	
	/**
	 * 删除薪酬标准
	 * @param id 薪酬标准编号
	 * @return
	 */
	public int delStan(Integer id);
	
	/**
	 * 修改薪酬标准
	 * @param stan 薪酬标准信息
	 * @return
	 */
	public int updStan(Standard stan);

}
