package org.ntvru.eacervo.dao;

import org.ntvru.eacervo.models.OperationReport;
import org.springframework.stereotype.Repository;

@Repository
public class OperationReportDAO extends GenericDAO<OperationReport>{

	public OperationReportDAO() {
		super.daoU = new DAOUtility<OperationReport>();
		super.daoU.reflect(this);
	}
}
