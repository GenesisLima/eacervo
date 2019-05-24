package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Proceedings;
import org.springframework.stereotype.Repository;

@Repository
public class ProceedingsDAO extends GenericDAO<Proceedings>{

	

	public ProceedingsDAO() {
		super.daoU = new DAOUtility<Proceedings>();
		super.daoU.reflect(this);
	}

	

	
	
	

}
