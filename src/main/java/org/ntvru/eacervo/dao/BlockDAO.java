package org.ntvru.eacervo.dao;


import org.ntvru.eacervo.models.Block;
import org.springframework.stereotype.Repository;

@Repository
public class BlockDAO extends GenericDAO<Block> {
	
	
        public BlockDAO() {
		super.daoU = new DAOUtility<Block>();
		super.daoU.reflect(this);
		}

	public void save(Block block){
		manager.merge(block);
	}

	
	


}
