package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Area;
import org.ntvru.eacervo.models.Season;
import org.springframework.stereotype.Repository;
@Repository
public class SeasonDAO extends GenericDAO<Season>{


	public SeasonDAO(){
		super.daoU = new DAOUtility<Season>();
		super.daoU.reflect(this);
		
	}


	

}
