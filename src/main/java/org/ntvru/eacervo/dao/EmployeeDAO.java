package org.ntvru.eacervo.dao;

import org.springframework.stereotype.Repository;

@Repository
public class EmployeeDAO {
      
	private EntityManager manager;
	
	public void save(Employee employee){
		manager.persist(employee);
	}
}
