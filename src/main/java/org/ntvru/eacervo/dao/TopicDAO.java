package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.ntvru.eacervo.models.Season;
import org.ntvru.eacervo.models.Topic;
import org.springframework.stereotype.Repository;

@Repository
public class TopicDAO extends GenericDAO<Topic>{

	
	 @PersistenceContext
	 private EntityManager manager;
	 
	 
	 
	 public List<Topic> getByName(String name){
		 TypedQuery<Topic> query = manager.createNamedQuery("Topic.findByName",Topic.class).setParameter("topicName", name);
		 System.out.println(query);		 
		 return query.getResultList();
	 }



	@Override
	public Topic getById(int id) {
		return manager.createQuery("select a from TOPIC a where a.status='A' and a.id="+id,Topic.class).getSingleResult();

	}
	 
	 
	 
	
	
}
