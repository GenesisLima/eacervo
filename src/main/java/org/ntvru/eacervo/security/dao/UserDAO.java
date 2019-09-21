package org.ntvru.eacervo.security.dao;

import org.ntvru.eacervo.dao.DAOUtility;
import org.ntvru.eacervo.security.models.User;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO extends SecurityGenericDAO<User>{

	
	public UserDAO(){
		  super.daoU = new DAOUtility<User>();
		  super.daoU.reflect(this);
		}
}
