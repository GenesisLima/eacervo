package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.ntvru.eacervo.models.Function;
import org.springframework.stereotype.Repository;

@Repository
public class FunctionDAO {

	@PersistenceContext
	private EntityManager manager;
	
	
	public void save(Function function){		
		manager.merge(function);
	}

	public List<Function> list(){		
		return manager.createQuery("select f from Function f where f.status='A'").getResultList();
	}

	public void remove(int id) {
		manager.createQuery("update Function f set f.status='D' where f.id="+id).executeUpdate();	
		
	}
	
	public Function getById(int id){
		
		return manager.createQuery("select f from Function f where f.status='A' and f.id="+id,Function.class).getSingleResult();
		
	}
	
}
