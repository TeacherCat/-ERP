package cn.hrms.pay.biz.impl;

import java.util.List;

import cn.hrms.pay.biz.StaDetBiz;
import cn.hrms.pay.dao.StaDetDao;
import cn.hrms.pay.entity.StandardDetails;

public class StaDetBizImpl implements StaDetBiz{
	private StaDetDao staDetDao;

	public StandardDetails findStaDetById(Integer id) {
		return staDetDao.findStaDetById(id);
	}

	public List<StandardDetails> findStanById(Integer StanId) {
		return staDetDao.findStanById(StanId);
	}

	public int findStaDetByMin(Integer StanId) {
		return staDetDao.findStaDetByMin(StanId);
	}

	public int addStaDet(StandardDetails staDet) {
		return staDetDao.addStaDet(staDet);
	}

	public int delStaDet(Integer stanId) {
		return staDetDao.delStaDet(stanId);
	}

	public int updStaDet(StandardDetails staDet) {
		return staDetDao.updStaDet(staDet);
	}

	public void setStaDetDao(StaDetDao staDetDao) {
		this.staDetDao = staDetDao;
	}

}
