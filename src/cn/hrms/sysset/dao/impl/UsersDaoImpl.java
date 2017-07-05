package cn.hrms.sysset.dao.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import cn.hrms.sysset.dao.UsersDao;
import cn.hrms.sysset.entity.Users;
import cn.hrms.util.Page;

public class UsersDaoImpl extends SqlSessionDaoSupport implements UsersDao {

	public Users loginUsers(Users users) {
		return super.getSqlSession().selectOne("cn.hrms.sysset.entity.Users.loginUsers",users);
	}
	
	public List<Users> findUsers(Users users, Page<Users> page) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("users", users);
		params.put("start", (page.getCurrPageNo()-1)*page.getPageSize());
		params.put("pageSize", page.getPageSize());
		return this.getSqlSession().selectList("cn.hrms.sysset.entity.Users.findUsers", params);
	}

	public Integer updUsersPwd(Users users) {
		return super.getSqlSession().update("cn.hrms.sysset.entity.Users.updUsersPwd", users);
	}
	
	public Users findUsersById(String name) {
		return this.getSqlSession().selectOne("cn.hrms.sysset.entity.Users.findUsersById", name);
	}

	public int usersCount(Users users) {
		return this.getSqlSession().selectOne("cn.hrms.sysset.entity.Users.usersCount", users);
	}

	public int addUsers(Users users) {
		return this.getSqlSession().insert("cn.hrms.sysset.entity.Users.addUsers", users);
	}

	public int delUsers(String name) {
		return this.getSqlSession().delete("cn.hrms.sysset.entity.Users.delUsers", name);
	}

	public int updUsers(Users users) {
		return this.getSqlSession().update("cn.hrms.sysset.entity.Users.updUsers", users);
	}

}
