package org.ntvru.eacervo.dao;

import org.ntvru.eacervo.models.Product;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO extends GenericDAO<Product> {



	
	public ProductDAO(){
	  super.daoU = new DAOUtility<Product>();
	  super.daoU.reflect(this);
	}


	
	


}
