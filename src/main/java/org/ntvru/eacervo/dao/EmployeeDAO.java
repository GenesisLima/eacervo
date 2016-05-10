package org.ntvru.eacervo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.ntvru.eacervo.models.Employee;
import org.springframework.stereotype.Repository;

@Repository
public class EmployeeDAO extends GenericDAO<Employee>{
     @PersistenceContext
	private EntityManager manager;
	
	public void save(Employee employee){
		manager.merge(employee);
	}

	@Override
	public List<Employee> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void remove(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Employee getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}
}
