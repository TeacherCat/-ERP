package cn.hrms.train.biz.impl;
import java.util.List;
import cn.hrms.train.biz.TrainBiz;
import cn.hrms.train.dao.TrainDao;
import cn.hrms.train.entity.Train;
import cn.hrms.util.Page;

public class TrainBizImpl implements TrainBiz{

	private TrainDao trainDao;
	
	public List<Train> findTrain(Train train, Page<Train> page) {
		return trainDao.findTrain(train, page);
	}

	public Integer findTotalCount(Train train){
		return trainDao.findTotalCount(train);
	}

	public Integer addTrain(Train train) {
		return trainDao.addTrain(train);
	}
	
	public Integer updTrain(Train train) {
		return trainDao.updTrain(train);
	}

	public Integer updTrainState(Train train) {
		return trainDao.updTrainState(train);
	}

	public Integer delTrain(Integer id) {
		return trainDao.delTrain(id);
	}
	
	
	
	public void setTrainDao(TrainDao trainDao) {
		this.trainDao = trainDao;
	}

}
