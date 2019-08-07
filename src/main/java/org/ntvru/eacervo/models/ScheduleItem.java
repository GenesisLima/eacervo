package org.ntvru.eacervo.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

@Embeddable
@Table(name="SCHEDULE_ITEM")
public class ScheduleItem implements Serializable {

	
//	@Id
//	private long id;
//	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column(unique=true)
	private String scheduleItemCode;
	private String episodeName;
	private String productType;
	private String productName;
	private String episodeDuration;
	
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

	public String getEpisodeDuration() {
		return episodeDuration;
	}

	public void setEpisodeDuration(String episodeDuration) {
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
