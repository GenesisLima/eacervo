package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Area;
import org.ntvru.eacervo.models.Publishing;
import org.springframework.stereotype.Repository;

@Repository
public class PublishingDAO extends GenericDAO<Publishing>{

	@Override
	public List<Publishing> list() {
		return manager.createQuery("select a from PUBLISHING a where a.status='A'").getResultList();
	}

	@Override
	public void remove(int id) {
		manager.createQuery("update PUBLISHING a set a.status='D' where a.id="+id).executeUpdate();
		
	}

	@Override
	public Publishing getById(int id) {
		return manager.createQuery("select a from PUBLISHING a where a.status='A' and a.id="+id,Publishing.class).getSingleResult();
	}

}
