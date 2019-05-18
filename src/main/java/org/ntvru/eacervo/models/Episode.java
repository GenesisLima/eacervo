package org.ntvru.eacervo.models;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Episode implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="episode_id")
	private int id;
	
	private String name;
	private String description;
	
	@ElementCollection
		@CollectionTable(name="BLOCK",joinColumns=@JoinColumn(name="episode_id"))
	private List<Block> blocks;
	
	
	
	public List<Block> getBlocks() {
		return blocks;
	}
	public void setBlocks(List<Block> blocks) {
		this.blocks = blocks;
	}
	@Column(columnDefinition="char(1) default 'A'")
    private String status = "A";
	
	
	@OneToOne
	@JoinColumn(name="fk_episode_director")
	private Director director; 
	
	private int duration;
	private Date exhibitionDate;
	@ManyToOne
	@JoinColumn(name="fk_episode_season")
	private Season season;
	@ManyToOne
	@JoinColumn(name="fk_episode_product")
	private Product product;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Director getDirector() {
		return director;
	}
	public void setDirector(Director director) {
		this.director = director;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public Date getExhibitionDate() {
		return exhibitionDate;
	}
	public void setExhibitionDate(Date exhibitionDate) {
		this.exhibitionDate = exhibitionDate;
	}
	public Season getSeason() {
		return season;
	}
	public void setSeason(Season season) {
		this.season = season;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
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
		result = prime * result
				+ ((description == null) ? 0 : description.hashCode());
		result = prime * result
				+ ((director == null) ? 0 : director.hashCode());
		result = prime * result + duration;
		result = prime * result
				+ ((exhibitionDate == null) ? 0 : exhibitionDate.hashCode());
		result = prime * result + id;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((product == null) ? 0 : product.hashCode());
		result = prime * result + ((season == null) ? 0 : season.hashCode());
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
		Episode other = (Episode) obj;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (director == null) {
			if (other.director != null)
				return false;
		} else if (!director.equals(other.director))
			return false;
		if (duration != other.duration)
			return false;
		if (exhibitionDate == null) {
			if (other.exhibitionDate != null)
				return false;
		} else if (!exhibitionDate.equals(other.exhibitionDate))
			return false;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (product == null) {
			if (other.product != null)
				return false;
		} else if (!product.equals(other.product))
			return false;
		if (season == null) {
			if (other.season != null)
				return false;
		} else if (!season.equals(other.season))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Episode [id=" + id + ", name=" + name + ", description="
				+ description + ", director=" + director + ", duration="
				+ duration + ", exhibitionDate=" + exhibitionDate + ", season="
				+ season + ", product=" + product + "]";
	}
	
	
	
	
	
	
}
