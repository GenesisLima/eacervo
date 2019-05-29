package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.ntvru.eacervo.models.Product;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO extends GenericDAO<Product> {


//	@PersistenceContext
//	 private EntityManager manager;
	
	public ProductDAO(){
	  super.daoU = new DAOUtility<Product>();
	  super.daoU.reflect(this);
	}


	


}
