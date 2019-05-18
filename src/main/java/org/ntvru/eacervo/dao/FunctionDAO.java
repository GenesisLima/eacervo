package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.ntvru.eacervo.models.Function;
import org.springframework.stereotype.Repository;

@Repository
public class FunctionDAO extends GenericDAO<Function>{

//	@PersistenceContext
//	private EntityManager manager;
//	
//	
//	public void save(Function function){		
//		super.save(function);
//	}

	
	public Function getById(int id){
		
		return manager.createQuery("select f from FUNCTION f where f.status='A' and f.id="+id,Function.class).getSingleResult();
		
	}
	
	
}
