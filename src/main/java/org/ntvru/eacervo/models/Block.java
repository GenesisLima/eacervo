package org.ntvru.eacervo.models;

import java.io.Serializable;
import java.time.LocalTime;

import javax.persistence.Embeddable;
import javax.persistence.Table;

@Embeddable
@Table(name="BLOCK")
public class Block implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	
	private LocalTime duration;
	
	private String description;



	public LocalTime getDuration() {
		return duration;
	}

	public void setDuration(LocalTime duration) {
		this.duration = duration;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Block [duration=" + duration
				+ ", description=" + description + "]";
	}
	
	
	
	
}
