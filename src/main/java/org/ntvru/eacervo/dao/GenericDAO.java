package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public abstract class GenericDAO<T> {
	
	@PersistenceContext
	protected EntityManager manager;
	
	 public void save(T t){
		 manager.merge(t);
	 }
	 
     public abstract List<T> list();	 
	 
	 public abstract void remove(int id);
	 
	 public abstract T getById(int id);
	 
	 

}
