package org.ntvru.eacervo.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="entry")
public class Entry {

	
	@Id
	private int id;
	
	@ManyToOne
	@JoinColumn(name = "episode_id",nullable = false)
	private Episode episode;
	
	@ManyToOne
	@JoinColumn(name = "product_id", nullable = false)
	private Product product;
	
	@Column(columnDefinition="char(1) default 'A'")
	private String status = "A";
	
	
}
