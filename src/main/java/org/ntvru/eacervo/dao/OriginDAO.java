package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Origin;
import org.springframework.stereotype.Repository;

@Repository
public class OriginDAO extends GenericDAO<Origin>{
 
 
	public OriginDAO() {		

		super.daoU = new DAOUtility<Origin>();
		super.daoU.reflect(this);
	}

	@Override
	public Origin getById(int id) {
		
		return manager.createQuery("select a from Origin a where a.status='A' and a.id="+id, Origin.class).getSingleResult();
	}

	
	 @Override
	 public List<Origin> list() {

		
		 String query = "select t from Origin t where t.status='A'";
		
       // mapClasses();
			return manager.createQuery(query, Origin.class).getResultList();
		}

}


