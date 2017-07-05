package cn.hrms.pay.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.hrms.pay.dao.StandardDao;
import cn.hrms.pay.entity.Standard;
import cn.hrms.util.Page;

public class StandardDaoImpl extends SqlSessionDaoSupport implements StandardDao{

	public List<Standard> findStan(Standard stan, String endTime, String role, Page<Standard> page) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("stan", stan);
		params.put("role", role);
		params.put("state", "起草");
		params.put("endTime", endTime);
		params.put("start", (page.getCurrPageNo()-1)*page.getPageSize());
		params.put("pageSize", page.getPageSize());
		return this.getSqlSession().selectList("cn.hrms.pay.entity.Standard.findStan", params);
	}

	public Standard findStanById(Integer id) {
		return this.getSqlSession().selectOne("cn.hrms.pay.entity.Standard.findStanById", id);
	}

	public int stanCoun(Standard stan, String endTime, String role) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("stan", stan);
		params.put("role", role);
		params.put("endTime", endTime);
		return this.getSqlSession().selectOne("cn.hrms.pay.entity.Standard.stanCount", params);
	}

	public int addStan(Standard stan) {
		return this.getSqlSession().insert("cn.hrms.pay.entity.Standard.addStan", stan);
	}

	public int delStan(Integer id) {
		return this.getSqlSession().delete("cn.hrms.pay.entity.Standard.delStan", id);
	}

	public int updStan(Standard stan) {
		return this.getSqlSession().update("cn.hrms.pay.entity.Standard.updStan", stan);
	}

}
