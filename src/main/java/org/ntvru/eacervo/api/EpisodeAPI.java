package org.ntvru.eacervo.api;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Tuple;
import javax.ws.rs.Produces;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Episode;
import org.ntvru.eacervo.models.dto.EpisodeDTO;
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
	
	
	@RequestMapping(value="/all",method=RequestMethod.GET)
	@Produces("application/json")
	public @ResponseBody List<Episode> listEpisodesWithProductAndProductGroupByNameJSON(@RequestParam("type") String type){	
		if(type.trim().equalsIgnoreCase("json"));
//		return ((EpisodeDAO)dao).getEntitiesByAttributes(name);		
		return dao.list();		
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	@Produces("application/json")
	public @ResponseBody List<EpisodeDTO> listEpisodesJSON(@RequestParam("type") String type){		
		if(type.trim().equalsIgnoreCase("json"));	
		return convertTupleListToEpisode(dao.getEntitiesByAttributes("id","name"));
	}
	
	private List<EpisodeDTO> convertTupleListToEpisode(List<Tuple> tupleList) {
		List<EpisodeDTO> episodes = new ArrayList<EpisodeDTO>();
		for(Tuple t: dao.getEntitiesByAttributes("id","name")) {
			 EpisodeDTO episodeDTO = new EpisodeDTO((Integer)t.get("id"),(String) t.get("name"));
			 episodes.add(episodeDTO);
		}	
		return episodes;
	}

}
