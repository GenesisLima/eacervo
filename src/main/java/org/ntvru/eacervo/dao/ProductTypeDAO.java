package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Product;
import org.ntvru.eacervo.models.ProductType;
import org.springframework.stereotype.Repository;

@Repository
public class ProductTypeDAO extends GenericDAO<ProductType> {

	

	@Override
	public ProductType getById(int id) {
		
		return manager.createQuery("select p from PRODUCT_TYPE p where p.id ="+id,ProductType.class).getSingleResult();
	}

	@Override
	public List<ProductType> list() {
		// TODO Auto-generated method stub
		return manager.createQuery("select a from PRODUCT_TYPE a where a.status='A'").getResultList();
	}


}
