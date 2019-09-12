package org.ntvru.eacervo.dao;

import org.ntvru.eacervo.models.Schedule;
import org.springframework.stereotype.Repository;

@Repository
public class ScheduleDAO extends GenericDAO<Schedule> {

	
	public ScheduleDAO() {
		super.daoU = new DAOUtility<Schedule>();
		super.daoU.reflect(this);
	}
	
	
}
