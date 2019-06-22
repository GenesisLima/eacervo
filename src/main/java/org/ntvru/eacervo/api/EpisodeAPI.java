package org.ntvru.eacervo.api;

import java.util.List;

import javax.persistence.Tuple;
import javax.ws.rs.Produces;

import org.ntvru.eacervo.dao.EpisodeDAO;
import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Episode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
//TODO refactor this solution to optimize results
@Controller
@RequestMapping("/api/v1/episode")
public class EpisodeAPI {
	
	@Autowired
	private GenericDAO<Episode> dao;
	
	
	@RequestMapping(method=RequestMethod.GET)
	@Produces("application/json")
	public @ResponseBody List<Episode> listEpisodesWithProductAndProductGroupByNameJSON(@RequestParam("type") String type, @RequestParam("name") String name){	
		if(type.trim().equalsIgnoreCase("json"));		
//		return ((EpisodeDAO)dao).getEntitiesByAttributes(name);		
		return dao.getEntitiesByNames(name);		
	}
	
	

}
