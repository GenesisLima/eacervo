package org.ntvru.eacervo.models;

import java.io.Serializable;
import java.math.BigInteger;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="PRODUCT")
public class Product implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="product_id")
	private int id;
	
	private String name;
	
	@ManyToOne
	@JoinColumn(name="fk_product_topic")
	private Topic topic;
	
	private String obtainment;
	
	private String partner;
	
	private BigInteger productionCost;
	
	@ManyToOne
	@JoinColumn(name="fk_product_prod_group")
	private ProductGroup productGroup;
	
//	@ManyToOne
//	@JoinColumn(name="fk_product_prod_type")
//	private ProductType productType;
	
	@Transient
	private Team team;

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

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public String getObtainment() {
		return obtainment;
	}

	public void setObtainment(String obtainment) {
		this.obtainment = obtainment;
	}

	public String getPartner() {
		return partner;
	}

	public void setPartner(String partner) {
		this.partner = partner;
	}

	public BigInteger getProductionCost() {
		return productionCost;
	}

	public void setProductionCost(BigInteger productionCost) {
		this.productionCost = productionCost;
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}
	
	

	public ProductGroup getProductGroup() {
		return productGroup;
	}

	public void setProductGroup(ProductGroup productGroup) {
		this.productGroup = productGroup;
	}

//	public ProductType getProductType() {
//		return productType;
//	}
//
//	public void setProductType(ProductType productType) {
//		this.productType = productType;
//	}

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
		Product other = (Product) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
	
	
}
