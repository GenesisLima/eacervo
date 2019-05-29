package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.ntvru.eacervo.models.Function;
import org.springframework.stereotype.Repository;

@Repository
public class FunctionDAO extends GenericDAO<Function>{


	
	public FunctionDAO(){
		super.daoU = new DAOUtility<Function>();
		super.daoU.reflect(this);
		
	}


	

	
	
}
