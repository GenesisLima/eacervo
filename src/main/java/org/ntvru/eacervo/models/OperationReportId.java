package org.ntvru.eacervo.models;

import java.io.Serializable;
import java.sql.Time;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class OperationReportId implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	
	//JPA compatibility Constructor
	public OperationReportId() {
		super();
	}
	public OperationReportId(Time localTime, int scheduleId) {
		super();
		this.localTime = localTime;
		this.scheduleId = scheduleId;
	}
	@Column(name = "hora", columnDefinition = "TIME")
	private Time localTime;
	
	private int scheduleId;
	
	public Time getLocalTime() {
		return localTime;
	}
	public void setLocalTime(Time localTime) {
		this.localTime = localTime;
	}
	public int getScheduleId() {
		return scheduleId;
	}
	public void setScheduleId(int sheduleId) {
		this.scheduleId = sheduleId;
	}
	
	
}
