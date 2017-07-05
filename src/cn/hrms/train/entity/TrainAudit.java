package cn.hrms.train.entity;
import java.io.Serializable;

/**
 * 培训审核
 */
public class TrainAudit implements Serializable {

	private static final long serialVersionUID = -6074587605241099012L;
	
	/**
	 * 培训编号
	 */
	private Integer id;
	/**
	 * 审核结果
	 */
	private String result;
	/**
	 * 审核意见
	 */
	private String opinion;
	/**
	 * 审核人
	 */
	private String person;
	/**
	 * 审核时间
	 */
	private String time;
	
	
	/**
	 * 构造函数
	 */
	public TrainAudit() { }
	
	public TrainAudit(Integer id, String result, String opinion, String person,
			String time) {
		this.id = id;
		this.result = result;
		this.opinion = opinion;
		this.person = person;
		this.time = time;
	}

	
	/**
	 * 属性封装
	 */
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getOpinion() {
		return opinion;
	}

	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	
	
	
}
