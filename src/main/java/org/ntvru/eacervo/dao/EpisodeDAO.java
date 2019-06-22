package org.ntvru.eacervo.dao;

import java.util.List;

import org.ntvru.eacervo.models.Episode;
import org.springframework.stereotype.Repository;

@Repository
public class EpisodeDAO extends GenericDAO<Episode> {

	public EpisodeDAO(){
		  super.daoU = new DAOUtility<Episode>();
		  super.daoU.reflect(this);
		}
	
	/*select e.episode_id, e.name, e.description, e.exhibitionDate,e.duration, p.name , g.name , 
	 * g.initials as 'initials' from episode e inner join product p on  
	 * e.fk_episode_product = p.product_id inner join productgroup g on p.fk_product_prod_group = g.product_group_id;
	 */
	public List<Episode> getEpisodesWithProductAndProductGroupByName(String name){
//		 String query = "select new org.ntvru.eacervo.models.dto.EpisodeDTO(e.id, e.name, e.exhibitionDate, e.duration, p.name) from Episode e join e.product p where e.name ="+name+" and e.status='A' and p.status='A'";	
		 String query = "select e.id, e.name, e.exhibitionDate, e.duration, p.name from Episode e join e.product p where e.name ="+name+" and e.status='A' and p.status='A'";	

			return manager.createQuery(query, daoU.getEntityClass()).getResultList();
		
	}
}
