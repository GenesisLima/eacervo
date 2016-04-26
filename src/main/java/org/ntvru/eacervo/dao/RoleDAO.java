package org.ntvru.eacervo.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.ntvru.eacervo.models.Role;
import org.springframework.stereotype.Repository;

@Repository
public class RoleDAO {

	@PersistenceContext
	private EntityManager manager;
	
	//TODO renomear método para ficar mais auto descritivo,já que implementa duas funcionalidades.
		 public void save(Role role){		 
			 manager.merge(role);		 
		 }
		 
	
}
