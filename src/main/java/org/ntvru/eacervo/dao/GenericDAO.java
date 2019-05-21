package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.cfg.Mappings;
import org.ntvru.eacervo.models.ProductType;
import org.springframework.stereotype.Repository;




@Repository
public abstract class GenericDAO<T> {
	
	DAOUtility<T> daoU ;

	
	@PersistenceContext
	protected EntityManager manager;
	
	 public void save(T t){
		 manager.merge(t);
	 }
	 //public abstract List<T> getAll();
	 
//     public abstract List<T> list();	 
//	 
//	 public abstract void remove(int id);
//	 
    public abstract T getById(int id);
	 
	 public List<T> list() {

		
		 String query = "select t from "+daoU.getClassName().toString()+" t where t.status='A'";
		
        // mapClasses();
			return manager.createQuery(query, daoU.getEntityClass()).getResultList();
		}

		
//	 public void remove(int id) {
//			manager.createQuery("update "+daoU.getClassName()+" t set t.status='D' where t.id="+id).executeUpdate();
//			
//		}

 
//		 private void mapClasses() {
//	       		org.hibernate.cfg.Configuration configuration = new org.hibernate.cfg.Configuration();
//	       		configuration.addAnnotatedClass(ProductType.class);
//	       		Mappings mps = configuration.createMappings();
//	       		
//	       		
//			//return manager.createQuery("select a from "+daoU.getClassName().toUpperCase()+" a where a.status='A'").getResultList();
//		}

		public void remove(int id) {
			manager.createQuery("update "+daoU.getClassName().toUpperCase()+" a set a.status='D' where a.id="+id).executeUpdate();
			
		}



		
		
	
}
