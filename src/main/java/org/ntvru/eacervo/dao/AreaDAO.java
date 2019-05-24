package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Area;
import org.ntvru.eacervo.models.Block;
import org.springframework.stereotype.Repository;

@Repository
public class AreaDAO extends GenericDAO<Area>{
 
 
	public AreaDAO() {		

		super.daoU = new DAOUtility<Area>();
		super.daoU.reflect(this);
	}

	


}


