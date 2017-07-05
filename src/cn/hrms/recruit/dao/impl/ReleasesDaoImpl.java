package cn.hrms.recruit.dao.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import cn.hrms.recruit.dao.ReleasesDao;
import cn.hrms.recruit.entity.Releases;
import cn.hrms.util.Page;

public class ReleasesDaoImpl extends SqlSessionDaoSupport implements ReleasesDao {

	public Releases findReleasesByID(Integer id) {
		return super.getSqlSession().selectOne("cn.hrms.recruit.entity.Releases.findReleasesById", id);
	}

	public List<Releases> findAllReleases(){
		return super.getSqlSession().selectList("cn.hrms.recruit.entity.Releases.findAllReleases");
	}
	
	public List<Releases> findReleases(Releases releases, Page<Releases> page) {
		Map<String ,Object> params = new HashMap<String, Object>();
		params.put("releases", releases);
		params.put("start", ((page.getCurrPageNo()-1)*page.getPageSize()));
		params.put("size", page.getPageSize());
		return super.getSqlSession().selectList("cn.hrms.recruit.entity.Releases.findReleases", params);
	}

	public Integer findTotalCount(Releases releases) {
		return super.getSqlSession().selectOne("cn.hrms.recruit.entity.Releases.findTotalCount", releases);
	}

	public Integer addReleases(Releases releases) {
		return super.getSqlSession().insert("cn.hrms.recruit.entity.Releases.addReleases", releases);
	}

	public Integer updReleases(Releases releases) {
		return super.getSqlSession().update("cn.hrms.recruit.entity.Releases.updReleases", releases);
	}

	public Integer delReleases(Integer id) {
		return super.getSqlSession().delete("cn.hrms.recruit.entity.Releases.delReleases", id);
	}
	
}
