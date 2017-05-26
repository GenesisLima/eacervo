package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Area;
import org.springframework.stereotype.Repository;

@Repository
public class AreaDAO extends GenericDAO<Area>{

	@Override
	public List<Area> list() {
		return manager.createQuery("select a from AREA a where a.status='A'").getResultList();
	}

	@Override
	public void remove(int id) {
		manager.createQuery("update AREA a set a.status='D' where a.id="+id).executeUpdate();
		
	}

	@Override
	public Area getById(int id) {
		return manager.createQuery("select a from AREA a where a.status='A' and a.id="+id,Area.class).getSingleResult();
	}

	
	
}


