package org.ntvru.eacervo.dao;

import java.util.Collection;
import java.util.List;

import javax.persistence.TypedQuery;

import org.ntvru.eacervo.models.ScheduleItem;
import org.springframework.stereotype.Repository;
@Repository
public class ScheduleItemDAO extends GenericDAO<ScheduleItem> {

	
	public ScheduleItemDAO() {
		super.daoU = new DAOUtility<ScheduleItem>();
		super.daoU.reflect(this);
	}
	
	

	public ScheduleItem getById(String scheduleItemCode) {
	
		return manager.createQuery("select s from ScheduleItem s where s.scheduleItemCode=:scheduleItemCode and s.status='A'", ScheduleItem.class)
				.setParameter("scheduleItemCode", scheduleItemCode).getSingleResult();
	}
	
	public Collection<ScheduleItem> listAll(){
		 TypedQuery<ScheduleItem> query = manager.createQuery("select si from Schedule s join s.scheduleItems si",ScheduleItem.class);
		 Collection<ScheduleItem> resultList = query.getResultList();
		  System.out.println("name "+resultList.stream().findAny().get());
		return resultList;
	}
}
