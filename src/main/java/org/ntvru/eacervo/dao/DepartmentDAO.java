package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Area;
import org.ntvru.eacervo.models.Department;
import org.ntvru.eacervo.models.Function;
import org.springframework.stereotype.Repository;

@Repository
public class DepartmentDAO extends GenericDAO<Department> {

	
	public DepartmentDAO() {
		super.daoU = new DAOUtility<Department>();
		super.daoU.reflect(this);
		}
	


	@Override
	public Department getById(int id) {
		return manager.createQuery("select d from DEPARTMENT d where d.status='A' and d.id="+id,Department.class).getSingleResult();
	}

	
}
