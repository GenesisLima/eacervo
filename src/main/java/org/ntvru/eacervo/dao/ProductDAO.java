package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Product;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO extends GenericDAO<Product> {

	@Override
	public List<Product> list() {
		
		return manager.createQuery("select p from PRODUCT p",Product.class).getResultList();
	}

	@Override
	public void remove(int id) {
		manager.createQuery("update PRODUCT p set p.status='D' where p.id="+id).executeUpdate();
		
	}

	@Override
	public Product getById(int id) {
		
		return manager.createQuery("select p from PRODUCT p where p.id ="+id,Product.class).getSingleResult();
	}



}
