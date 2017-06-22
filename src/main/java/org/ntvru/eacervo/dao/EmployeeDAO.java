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
     
     public EmployeeDAO(){
    	 super.daoU = new DAOUtility<Employee>();
    	 super.daoU.reflect(this);
    	 
     }
	
	public void save(Employee employee){
		manager.merge(employee);
	}

	

	@Override
	public Employee getById(int id) {
		
		return manager.createQuery("select e from EMPLOYEE e where e.id="+id+" and e.status='A'", Employee.class).getSingleResult();
	}
}
