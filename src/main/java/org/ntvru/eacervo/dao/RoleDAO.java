package org.ntvru.eacervo.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.ntvru.eacervo.models.Publishing;
import org.ntvru.eacervo.models.Role;
import org.springframework.stereotype.Repository;

@Repository
public class RoleDAO extends GenericDAO<Role>{

	
	public RoleDAO() {
		super.daoU = new DAOUtility<Role>();
		super.daoU.reflect(this);
		
	}
	
	@PersistenceContext
	private EntityManager manager;
	
	//TODO renomear método para ficar mais auto descritivo,já que implementa duas funcionalidades.
		 public void save(Role role){		 
			 manager.merge(role);		 
		 }

		@Override
		public Role getById(int id) {
			return manager.createQuery("select r from ROLE r where r.status='A' and r.id="+id,Role.class).getSingleResult();
		}
		 
	
}
