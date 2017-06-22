package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.ProductGroup;
import org.ntvru.eacervo.models.ProductType;
import org.springframework.stereotype.Repository;

@Repository
public class ProductGroupDAO extends GenericDAO<ProductGroup> {

	

	@Override
	public ProductGroup getById(int id) {
		
		return manager.createQuery("select p from ProductGroup p where p.id ="+id,ProductGroup.class).getSingleResult();
	}



}
