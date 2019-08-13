package org.ntvru.eacervo.dao;

import org.ntvru.eacervo.models.ScheduleItem;
import org.springframework.stereotype.Repository;
@Repository
public class ScheduleItemDAO extends GenericDAO<ScheduleItem> {

	
	public ScheduleItemDAO() {
		super.daoU = new DAOUtility<ScheduleItem>();
		super.daoU.reflect(this);
	}
	
	

	public ScheduleItem getById(String scheduleItemCode) {
	
		return manager.createQuery("select s from SCHEDULE_ITEM s where s.id="+scheduleItemCode+" and s.status='A'", ScheduleItem.class).getSingleResult();
	}
}
