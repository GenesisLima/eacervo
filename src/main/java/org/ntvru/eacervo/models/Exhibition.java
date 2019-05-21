package org.ntvru.eacervo.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="EXHIBITION")
public class Exhibition implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	private int id;
	@ManyToOne
	@JoinColumn(name="fk_exhibition_publishing")
	private Publishing publishing;
	@ManyToOne
	@JoinColumn(name="fk_exhibition_episode")
	private Episode episode;
	
	
	@Column(columnDefinition="char(1) default 'A'")
    private String status = "A";


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Publishing getPublishing() {
		return publishing;
	}


	public void setPublishing(Publishing publishing) {
		this.publishing = publishing;
	}


	public Episode getEpisode() {
		return episode;
	}


	public void setEpisode(Episode episode) {
		this.episode = episode;
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
		Exhibition other = (Exhibition) obj;
		if (id != other.id)
			return false;
		return true;
	}


	@Override
	public String toString() {
		return "Exhibition [id=" + id + ", publishing=" + publishing
				+ ", episode=" + episode + ", status=" + status + "]";
	}
	
	
	
	
	
}
