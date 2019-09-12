package org.ntvru.eacervo.models;

import java.io.Serializable;
import java.sql.Date;
import java.util.Collection;
import java.util.LinkedHashSet;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="SCHEDULE")
public class Schedule implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="schedule_id")
	private int id;
	private Date exhibitionDate;
	
//	@OneToMany(cascade=CascadeType.PERSIST)
//	@ElementCollection
//	@CollectionTable(name="SCHEDULE_ITEM",joinColumns=@JoinColumn(name="schecule_id"))
	@ManyToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinTable(name="SCHEDULE_SCHEDULE_ITEM")
	private Collection<ScheduleItem> scheduleItems = new LinkedHashSet<>();
	
	@Column(columnDefinition="char(1) default 'A'")
    private String status = "A";
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	public Date getExhibitionDate() {
		return exhibitionDate;
	}
	public void setExhibitionDate(Date exhibitionDate) {
		this.exhibitionDate = exhibitionDate;
	}
	public Collection<ScheduleItem> getScheduleItems() {
		return scheduleItems;
	}
	
	public void setScheduleItems(ScheduleItem scheduleItems) {		
		this.scheduleItems.add(scheduleItems);
	}
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
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
		Schedule other = (Schedule) obj;
		if (id != other.id)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Schedule [id=" + id + ", date=" + exhibitionDate + "]";
	}
	
	
	
	
	
	
	
}
