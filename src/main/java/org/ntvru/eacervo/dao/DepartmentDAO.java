package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Department;
import org.ntvru.eacervo.models.Function;
import org.springframework.stereotype.Repository;

@Repository
public class DepartmentDAO extends GenericDAO<Department> {

	
	
	@Override
	public List<Department> list() {
		return manager.createQuery("select d from Department d where d.status='A'").getResultList();
		
	}

	@Override
	public void remove(int id) {
		manager.createQuery("update Department d set d.status='D' where d.id="+id).executeUpdate();	
		
	}

	@Override
	public Department getById(int id) {
		return manager.createQuery("select d from Department d where d.status='A' and d.id="+id,Department.class).getSingleResult();
	}

	
}
