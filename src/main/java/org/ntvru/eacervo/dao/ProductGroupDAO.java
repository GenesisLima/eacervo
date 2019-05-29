package org.ntvru.eacervo.dao;

import org.ntvru.eacervo.models.ProductGroup;
import org.springframework.stereotype.Repository;

@Repository
public class ProductGroupDAO extends GenericDAO<ProductGroup> {

	

	public ProductGroupDAO() {
		super.daoU = new DAOUtility<ProductGroup>();
		super.daoU.reflect(this);
	}
	
	




	 
}
