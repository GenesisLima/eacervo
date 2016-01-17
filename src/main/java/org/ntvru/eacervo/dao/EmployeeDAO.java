package org.ntvru.eacervo.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.ntvru.eacervo.models.Employee;
import org.springframework.stereotype.Repository;

@Repository
public class EmployeeDAO {
     @PersistenceContext
	private EntityManager manager;
	
	public void save(Employee employee){
		manager.persist(employee);
	}
}
