package org.ntvru.eacervo.dao;

import org.ntvru.eacervo.models.Block;
import org.ntvru.eacervo.models.Employee;
import org.springframework.stereotype.Repository;

@Repository
public class BlockDAO extends GenericDAO<Block> {
	
	
	public void save(Block block){
		manager.merge(block);
	}

	
	
	@Override
	public Block getById(int id) {
		
		return manager.createQuery("select e from BLOCK b where e.id="+id+" and b.status='A'", Block.class).getSingleResult();
	}

}
