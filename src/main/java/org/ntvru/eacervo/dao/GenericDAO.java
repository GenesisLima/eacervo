package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Tuple;

import org.springframework.stereotype.Repository;




@Repository
public abstract class GenericDAO<T> {
	
	DAOUtility<T> daoU;

	
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

			return manager.createQuery(query, daoU.getEntityClass()).setParameter("name", "%" + name + "%").getResultList();

		}


		@SuppressWarnings("unchecked")
		public List<Tuple> getEntitiesByAttributes(String ...attributes){
			
			String columns = "";
			//String dtoPackage = daoU.getEntityClass().getPackage()+".dto";
		
			for(String attribute : attributes) {
				if(attribute.equalsIgnoreCase(attributes[attributes.length -1])) {										
                  columns += "t."+attribute+" as "+attribute+" ";
				}else {
					columns += "t."+attribute+" as "+attribute+", ";
				}
			}
			
             // working dto query version
			//String query = "select new "+dtoPackage.replace("package", "")+".ProductDTO"+"("+columns+") from "+daoU.getClassName()+" t where t.status='A'";
			
			
			String query = "select "+columns+" from "+daoU.getClassName()+" t where t.status='A'";

			
			
			
			return manager.createQuery(query, Tuple.class).getResultList();
					
		}
			
		
		public Tuple getEntityByAttribute(String columnName, Object param) {
			
			String query = "select t from "+daoU.getClassName()+" t where t.status='A' and t."+columnName+"=:"+columnName;
			try {
			return manager.createQuery(query,Tuple.class)					
					.setParameter(columnName, param).getSingleResult();
			}catch(NoResultException e) {
				return null;
			}
			
			
		}
		
		
	
}
