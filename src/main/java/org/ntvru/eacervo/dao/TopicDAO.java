package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.ntvru.eacervo.models.Topic;
import org.springframework.stereotype.Repository;

@Repository
public class TopicDAO {

	
	 @PersistenceContext
	 private EntityManager manager;
	 
	 //TODO renomear método para ficar mais auto descritivo,já que implementa duas funcionalidades.
	 public void save(Topic topic){		 
		 manager.merge(topic);		 
	 }
	 
	 public List<Topic> list(){		 
		 return manager.createQuery("select t from Topic t where t.status = 'A'",Topic.class).getResultList();
	 }
	 
	
		//TODO implementar update com flag 
	 public void remove(int id){		 
		 manager.createQuery("update Topic t set t.status='D' where t.id="+id).executeUpdate();		
	 }
	 
	 public List<Topic> getByName(String name){
		 TypedQuery<Topic> query = manager.createNamedQuery("Topic.findByName",Topic.class).setParameter("topicName", name);
		 System.out.println(query);		 
		 return query.getResultList();
	 }
	 
	 
	 
	
	
}
