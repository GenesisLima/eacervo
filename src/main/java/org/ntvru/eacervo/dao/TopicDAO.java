package org.ntvru.eacervo.dao;

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
	 
	 
	 
	 
	 
	
	
}
