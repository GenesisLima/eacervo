package org.ntvru.eacervo.dao;

import org.ntvru.eacervo.models.Entry;
import org.springframework.stereotype.Repository;

@Repository
public class EntryDAO extends GenericDAO<Entry>{
	
	public EntryDAO() {
		super.daoU = new DAOUtility<Entry>();
		super.daoU.reflect(this);
	}

}
