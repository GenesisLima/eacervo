package org.ntvru.eacervo.api;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Tuple;
import javax.ws.rs.Produces;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Episode;
import org.ntvru.eacervo.models.dto.EpisodeDTO;
import org.ntvru.eacervo.models.dto.ProductDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api/v1/product")
public class EpisodeAPI {
	
	@Autowired
	private GenericDAO<Episode> dao;
	
	@RequestMapping(method=RequestMethod.GET)
	@Produces("application/json")
	public @ResponseBody List<EpisodeDTO> listgroupsJSON(@RequestParam("type") String type){		
		if(type.trim().equalsIgnoreCase("json"));	
		return convertTupleListToEntity(dao.getEntitiesByAttributes("id","name"));
	}
		
	
	/*select e.episode_id, e.name, e.description, e.exhibitionDate,e.duration, p.name , g.name , 
	 * g.initials as 'initials' from episode e inner join product p on  
	 * e.fk_episode_product = p.product_id inner join productgroup g on p.fk_product_prod_group = g.product_group_id;
	 */
	private List<EpisodeDTO> convertTupleListToEntity(List<Tuple> tupleList) {
		List<EpisodeDTO> products = new ArrayList<EpisodeDTO>();
		for(Tuple t: dao.getEntitiesByAttributes("id","name")) {
			EpisodeDTO product = new EpisodeDTO((Integer)t.get("id"),(String) t.get("name"));
			 products.add(product);
		}	
		return products;
	}
	

}
