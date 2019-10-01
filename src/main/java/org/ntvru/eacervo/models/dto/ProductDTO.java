package org.ntvru.eacervo.models.dto;

import java.io.Serializable;

public class ProductDTO implements Serializable{

	
      private int id;
      private String name;
      private int productGroupId;
      private String productGroupName;
      private String description;


      
      
      


	public ProductDTO(int id, String name, int productGroupId, String productGroupName, String description) {
		super();
		this.id = id;
		this.name = name;
		this.productGroupId = productGroupId;
		this.productGroupName = productGroupName;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}
	

	

	public String getDescription() {
		return description;
	}

	public int getProductGroupId() {
		return productGroupId;
	}

	public String getProductGroupName() {
		return productGroupName;
	}

	public ProductDTO(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
      
      
	
}
