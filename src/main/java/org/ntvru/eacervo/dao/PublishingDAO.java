package org.ntvru.eacervo.dao;

import org.ntvru.eacervo.models.Publishing;
import org.springframework.stereotype.Repository;

@Repository
public class PublishingDAO extends GenericDAO<Publishing>{


	public PublishingDAO() {
		super.daoU = new DAOUtility<Publishing>();
		super.daoU.reflect(this);
	}

	

	

}
