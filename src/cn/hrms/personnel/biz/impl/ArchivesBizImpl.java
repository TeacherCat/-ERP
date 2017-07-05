package cn.hrms.personnel.biz.impl;
import java.util.List;

import cn.hrms.personnel.biz.ArchivesBiz;
import cn.hrms.personnel.dao.ArchivesDao;
import cn.hrms.personnel.entity.Archives;
import cn.hrms.util.Page;

public class ArchivesBizImpl implements ArchivesBiz{

	private ArchivesDao archivesDao;
	
	public List<Archives> findArchives(Archives archives, Page<Archives> page) {
		return archivesDao.findArchives(archives, page);
	}

	public Integer findTotalCount(Archives archives) {
		return archivesDao.findTotalCount(archives);
	}

	public List<Archives> findArcByPost(Integer postId) {
		return archivesDao.findArcByPost(postId);
	}
	
	public Integer addArchives(Archives archives) {
		return archivesDao.addArchives(archives);
	}

	public Integer updArchives(Archives archives) {
		return archivesDao.updArchives(archives);
	}

	public Integer updArchivesState(Archives archives) {
		return archivesDao.updArchivesState(archives);
	}

	public Integer delArchives(Integer id) {
		return archivesDao.delArchives(id);
	}
	
	
	
	public void setArchivesDao(ArchivesDao archivesDao) {
		this.archivesDao = archivesDao;
	}

}
