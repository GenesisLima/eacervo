package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.ntvru.eacervo.models.Topic;
import org.springframework.stereotype.Repository;

@Repository
public class TopicDAO {

	
	 @PersistenceContext
	 private EntityManager manager;
	 
	 
	 public void save(Topic topic){
		 manager.persist(topic);		 
	 }
	 
	 public List<Topic> list(){		 
		 return manager.createQuery("select t from Topic t",Topic.class).getResultList();
	 }
	 
	 
	 
	
	
}
