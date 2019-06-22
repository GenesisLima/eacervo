package org.ntvru.eacervo.models.dto;

import java.io.Serializable;

public class ProductDTO implements Serializable{

	
      private int id;
      private String name;
      
	public ProductDTO(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}
      
      
	
}
