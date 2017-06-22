package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Area;
import org.springframework.stereotype.Repository;

@Repository
public class AreaDAO extends GenericDAO<Area>{
 
 
	public AreaDAO() {
	super.daoU = new DAOUtility<Area>();
	super.daoU.reflect(this);
	}

	@Override
	public Area getById(int id) {
		
		return manager.createQuery("select a from AREA a where a.status='A' and a.id="+id, Area.class).getSingleResult();
	}


}


