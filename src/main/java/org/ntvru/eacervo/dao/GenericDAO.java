package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.ntvru.eacervo.models.Area;

public abstract class GenericDAO<T> {
	
	DAOUtility<T> daoU ;
	
	@PersistenceContext
	protected EntityManager manager;
	
	 public void save(T t){
		 manager.merge(t);
	 }
	 
//     public abstract List<T> list();	 
//	 
//	 public abstract void remove(int id);
//	 
    public abstract T getById(int id);
	 
	 public List<T> list() {
		 
			return manager.createQuery("select a from "+daoU.getClassName().toUpperCase()+" a where a.status='A'").getResultList();
		}

		public void remove(int id) {
			manager.createQuery("update "+daoU.getClassName().toUpperCase()+" a set a.status='D' where a.id="+id).executeUpdate();
			
		}


		
		
	
}
