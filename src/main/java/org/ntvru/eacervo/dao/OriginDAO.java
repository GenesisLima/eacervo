package org.ntvru.eacervo.dao;

import org.ntvru.eacervo.models.Origin;
import org.springframework.stereotype.Repository;

@Repository
public class OriginDAO extends GenericDAO<Origin>{
 
 
	public OriginDAO() {		

		super.daoU = new DAOUtility<Origin>();
		super.daoU.reflect(this);
	}

//	@Override
//	public Origin getById(int id) {
//		
//		return manager.createQuery("select a from Origin a where a.status='A' and a.id="+id, Origin.class).getSingleResult();
//	}

	


}


