package cn.hrms.sysset.dao;

import java.util.List;

import cn.hrms.sysset.entity.Post;
import cn.hrms.util.Page;

public interface PostDao {
	
	/**
	 * 查找职位
	 * @param post 条件
	 * @return
	 */
	public List<Post> findPost(Post post, Page<Post> page);
	
	/**
	 * 根据编号查找职位
	 * @param id 职位编号
	 * @return
	 */
	public Post findPostById(Integer id);
	
	/**
	 * 职位总数
	 * @return
	 */
	public int postCount(Post post);
	
	/**
	 * 新增职位
	 * @param post 职位信息
	 * @return
	 */
	public int addPost(Post post);
	
	/**
	 * 删除职位
	 * @param id 职位编号
	 * @return
	 */
	public int delPost(Integer id);
	
	/**
	 * 修改职位
	 * @param post 职位信息
	 * @return
	 */
	public int updPost(Post post);
	
	/**
	 * 根据部门编号查询职位集合
	 * @param id
	 * @return
	 */
	public List<Post> findPostByDeptId(Integer id);

}
