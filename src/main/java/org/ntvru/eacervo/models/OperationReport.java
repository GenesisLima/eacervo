package org.ntvru.eacervo.models;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;


@Entity
@Table(name="operation_report")
public class OperationReport implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@EmbeddedId
    OperationReportId operationReportId;
	
	 
	@MapsId("scheduleId")
    @ManyToOne
    //@JoinColumn(name = "schedule_id")       
    private Schedule schedule;
	
	@ManyToOne
	@JoinColumn(name = "schedule_item_id")  
	private ScheduleItem scheduleItem;
	
	private String report;


	public OperationReportId getOperationReportId() {
		return operationReportId;
	}


	public void setOperationReportId(OperationReportId operationReportId) {
		this.operationReportId = operationReportId;
	}


	public Schedule getSchedule() {
		return schedule;
	}


	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}


	public String getReport() {
		return report;
	}


	public void setReport(String report) {
		this.report = report;
	}


	public ScheduleItem getScheduleItem() {
		return scheduleItem;
	}


	public void setScheduleItem(ScheduleItem scheduleItem) {
		this.scheduleItem = scheduleItem;
	}


	
	
}
