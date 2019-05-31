package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.ntvru.eacervo.models.Product;
import org.springframework.stereotype.Repository;




@Repository
public abstract class GenericDAO<T> {
	
	DAOUtility<T> daoU ;

	
	@PersistenceContext
	protected EntityManager manager;
	
	 public void save(T t){
		 manager.merge(t);
	 }
 

	 @SuppressWarnings("unchecked")
	 public List<T> list() {
		 String query = "select t from "+daoU.getClassName()+" t where t.status='A'";	

			return manager.createQuery(query, daoU.getEntityClass()).getResultList();
		}


		public void remove(int id) {
			manager.createQuery("update "+daoU.getClassName()+" a set a.status='D' where a.id="+id).executeUpdate();
			
		}
		
		
		
		@SuppressWarnings("unchecked")
		public T getById(int id) {
			
			return (T) manager.createQuery("select a from "+daoU.getClassName()+" a where a.status='A' and a.id="+id, daoU.getEntityClass()).getSingleResult();
		}


		@SuppressWarnings("unchecked")
		public List<T> getEntitiesByNames(String name){
			String query = "select t from "+daoU.getClassName()+" t where t.status='A' and t.name LIKE :name";	
			//String query = "select t from "+daoU.getClassName()+" t where t.status='A' and t.name LIKE :name";	

			return manager.createQuery(query, daoU.getEntityClass()).setParameter("name", "%" + name + "%").getResultList();

		}


		
		
	
}
