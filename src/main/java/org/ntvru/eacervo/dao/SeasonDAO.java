package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Area;
import org.ntvru.eacervo.models.Season;
import org.springframework.stereotype.Repository;
@Repository
public class SeasonDAO extends GenericDAO<Season>{


	@Override
	public Season getById(int id) {
		return manager.createQuery("select a from SEASON a where a.status='A' and a.id="+id,Season.class).getSingleResult();
	}

}
