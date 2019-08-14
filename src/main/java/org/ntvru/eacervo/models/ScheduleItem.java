package org.ntvru.eacervo.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="SCHEDULE_ITEM")
public class ScheduleItem implements Serializable {

	
//	@Id
//	private long id;
//	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="schedule_item_id")
	private String scheduleItemCode;
	private String episodeName;
	private String productType;
	private String productName;
	private int episodeDuration;
	
	@ManyToMany(mappedBy="scheduleItems")
	private List<Schedule> schedules;
	
	@Column(columnDefinition="char(1) default 'A'")
    private String status = "A";


	public String getProductType() {
		return productType;
	}

	public String getEpisodeName() {
		return episodeName;
	}

	public void setEpisodeName(String episodeName) {
		this.episodeName = episodeName;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getEpisodeDuration() {
		return episodeDuration;
	}

	public void setEpisodeDuration(int episodeDuration) {
		this.episodeDuration = episodeDuration;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getScheduleItemCode() {
		return scheduleItemCode;
	}

	public void setScheduleItemCode(String scheduleItemCode) {
		this.scheduleItemCode = scheduleItemCode;
	}
	
	
	public List<Schedule> getSchedules() {
		return schedules;
	}

	public void setSchedules(List<Schedule> schedules) {
		this.schedules = schedules;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((scheduleItemCode == null) ? 0 : scheduleItemCode.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ScheduleItem other = (ScheduleItem) obj;
		if (scheduleItemCode == null) {
			if (other.scheduleItemCode != null)
				return false;
		} else if (!scheduleItemCode.equals(other.scheduleItemCode))
			return false;
		return true;
	}

	
	
}
