package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.ProductGroup;
import org.ntvru.eacervo.models.ProductType;
import org.springframework.stereotype.Repository;

@Repository
public class ProductGroupDAO extends GenericDAO<ProductGroup> {

	@Override
	public List<ProductGroup> list() {
		
		return manager.createQuery("select p from PRODUCT_GROUP p",ProductGroup.class).getResultList();
	}

	@Override
	public void remove(int id) {
		manager.createQuery("update PRODUCT_GROUP p set p.status='D' where p.id="+id).executeUpdate();
		
	}

	@Override
	public ProductGroup getById(int id) {
		
		return manager.createQuery("select p from PRODUCT_GROUP p where p.id ="+id,ProductGroup.class).getSingleResult();
	}



}
