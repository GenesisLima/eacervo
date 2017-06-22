package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Product;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO extends GenericDAO<Product> {

	

	@Override
	public Product getById(int id) {
		
		return manager.createQuery("select p from PRODUCT p where p.id ="+id,Product.class).getSingleResult();
	}



}
