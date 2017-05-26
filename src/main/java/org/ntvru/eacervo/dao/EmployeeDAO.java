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
		return manager.createQuery("select e from EMPLOYEE e where e.status='A'").getResultList();
	}

	@Override
	public void remove(int id) {
		manager.createQuery("update EMPLOYEE a set a.status='D' where a.id="+id).executeUpdate();
		
	}

	@Override
	public Employee getById(int id) {
		
		return manager.createQuery("select e from EMPLOYEE e where e.id="+id+" and e.status='A'", Employee.class).getSingleResult();
	}
}
