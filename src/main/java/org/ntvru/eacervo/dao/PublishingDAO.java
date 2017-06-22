package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Area;
import org.ntvru.eacervo.models.Publishing;
import org.springframework.stereotype.Repository;

@Repository
public class PublishingDAO extends GenericDAO<Publishing>{

	

	@Override
	public Publishing getById(int id) {
		return manager.createQuery("select a from PUBLISHING a where a.status='A' and a.id="+id,Publishing.class).getSingleResult();
	}

}
