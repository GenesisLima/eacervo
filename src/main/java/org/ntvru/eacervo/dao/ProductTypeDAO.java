package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.ProductType;
import org.springframework.stereotype.Repository;

@Repository
public class ProductTypeDAO extends GenericDAO<ProductType> {


	public ProductTypeDAO() {
	   super.daoU = new DAOUtility<ProductType>();
	   super.daoU.reflect(this);
	}



}
