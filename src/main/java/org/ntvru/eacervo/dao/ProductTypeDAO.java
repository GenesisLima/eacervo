package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Product;
import org.ntvru.eacervo.models.ProductType;
import org.springframework.stereotype.Repository;

@Repository
public class ProductTypeDAO extends GenericDAO<ProductType> {

	@Override
	public List<ProductType> list() {
		
		return manager.createQuery("select p from PRODUCT_TYPE p",ProductType.class).getResultList();
	}

	@Override
	public void remove(int id) {
		manager.createQuery("update PRODUCT_TYPE p set p.status='D' where p.id="+id).executeUpdate();
		
	}

	@Override
	public ProductType getById(int id) {
		
		return manager.createQuery("select p from PRODUCT_TYPE p where p.id ="+id,ProductType.class).getSingleResult();
	}



}
