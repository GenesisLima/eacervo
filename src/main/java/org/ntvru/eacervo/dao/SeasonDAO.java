package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Area;
import org.ntvru.eacervo.models.Season;
import org.springframework.stereotype.Repository;
@Repository
public class SeasonDAO extends GenericDAO<Season>{

	@Override
	public List<Season> list() {
		return manager.createQuery("select a from SEASON a where a.status='A'").getResultList();
	}

	@Override
	public void remove(int id) {
		manager.createQuery("update SEASON a set a.status='D' where a.id="+id).executeUpdate();
		
	}

	@Override
	public Season getById(int id) {
		return manager.createQuery("select a from SEASON a where a.status='A' and a.id="+id,Season.class).getSingleResult();
	}

}
