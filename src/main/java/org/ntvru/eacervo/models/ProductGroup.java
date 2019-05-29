package org.ntvru.eacervo.models;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity	
@Table(name="PRODUCTGROUP")
public class ProductGroup implements Serializable {

	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="product_group_id")
	private int id;
	private String name;
	@Column(columnDefinition="char(5)")
	private String initials;	
	private String description;
	
	
	@Column(columnDefinition="char(1) DEFAULT 'A'")
	private String status = "A";
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
	public String getInitials() {
		return initials;
	}
	public void setInitials(String initials) {
		this.initials = initials;
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
		ProductGroup other = (ProductGroup) obj;
		if (id != other.id)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "ProductGroup [id=" + id + ", name=" + name + ", initials=" + initials + ", description=" + description
				+ ", status=" + status + "]";
	}
	
	
	
	
	
	
}
