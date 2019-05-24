package org.ntvru.eacervo.dao;

import org.ntvru.eacervo.models.Role;
import org.springframework.stereotype.Repository;

@Repository
public class RoleDAO extends GenericDAO<Role>{

	
	public RoleDAO() {
		super.daoU = new DAOUtility<Role>();
		super.daoU.reflect(this);
		
	}
	
			
		 
	
}
