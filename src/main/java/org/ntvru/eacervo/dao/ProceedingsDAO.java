package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Proceedings;
import org.springframework.stereotype.Repository;

@Repository
public class ProceedingsDAO extends GenericDAO<Proceedings>{

	
	
	

	@Override
	public Proceedings getById(int id) {
		
		return manager.createQuery("select p from Proceedings p where p.status = 'A' and p.id="+id,Proceedings.class).getSingleResult();
	}
	
	

}
