package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Product;
import org.ntvru.eacervo.models.ProductType;
import org.springframework.stereotype.Repository;

@Repository
public class ProductTypeDAO extends GenericDAO<ProductType> {


	public ProductTypeDAO() {
	   super.daoU = new DAOUtility<ProductType>();
	   super.daoU.reflect(this);
	}

	@Override
	public ProductType getById(int id) {
		
		return manager.createQuery("select p from ProductType p where p.id ="+id,ProductType.class).getSingleResult();
	}


	public List<ProductType> getAll(){
		
		
		return manager.createQuery( "select t from ProductType t where t.status='A'", daoU.getEntityClass()).getResultList();
	}

	@Override
	public List<ProductType> list() {
		// TODO Auto-generated method stub
		return manager.createQuery("select a from PRODUCT_TYPE a where a.status='A'").getResultList();
	}

}
