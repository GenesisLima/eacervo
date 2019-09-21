package org.ntvru.eacervo.api;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.persistence.Tuple;
import javax.ws.rs.Produces;

import org.ntvru.eacervo.dao.ScheduleDAO;
import org.ntvru.eacervo.dao.ScheduleItemDAO;
import org.ntvru.eacervo.models.Schedule;
import org.ntvru.eacervo.models.ScheduleItem;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api/v1/schedule")
public class ScheduleAPI {

	
	@Autowired
	private ScheduleItemDAO scheduleItemDAO;
	@Autowired
	private ScheduleDAO scheduleDAO;
	
	private List<ScheduleItem> scheduleItems;
	
//	private final static Logger LOGGER = org.slf4j.Logger.getLogger(ScheduleAPI.class.getName());
	
	@RequestMapping(method=RequestMethod.GET)
	@Produces("application/json")
	public @ResponseBody List<ScheduleItem> listgroupsJSON(@RequestParam("type") String type) throws IOException{		
		if(type.trim().equalsIgnoreCase("json"));	
		fillScheduleItems();
		
//		 ObjectMapper mapper = new ObjectMapper();
//		 String jsonArray = mapper.writeValueAsString(dao.listAll().stream().collect(Collectors.toList()));
//		 System.out.println("JSON ARRAY "+jsonArray);
	//	return dao.listAll().stream().collect(Collectors.toSet()) ;
		System.out.println("SIZE "+this.scheduleItems.size());
		return this.scheduleItems;
		 
	}
	
	private void fillScheduleItems(){
		if(this.scheduleItems == null) {
			this.scheduleItems = new ArrayList<ScheduleItem>();
		}
		for(ScheduleItem si: scheduleItemDAO.listAll().stream().collect(Collectors.toList())) {
		    this.scheduleItems.add(si);
		}
		
	}
	
	
	@RequestMapping(value="item",method=RequestMethod.GET)
	@Produces("application/json")
	public @ResponseBody List<Schedule> getScheduleByDateJSON(@RequestParam("type") String type, @RequestParam("data") String data) throws IOException{
//		System.out.println("TYPE "+type);
//		System.out.println("DATA "+data.toString());
		//TODO trocar String pelo atributo(Generics)
		Schedule schedule = null;
		List<Schedule> schedules = new ArrayList<>();
		if(type.trim().equalsIgnoreCase("json")) {			
	    Tuple tuple = scheduleDAO.getEntityByAttribute("exhibitionDate", Date.valueOf(data));
	    schedule = (Schedule) tuple.get(0);
		System.out.println("TUPLA "+scheduleDAO.getEntityByAttribute("exhibitionDate", Date.valueOf(data)).get(0));
		
		schedules.add(schedule);
//        schedule.setId(tuple.get(0));
// 		schedule.setExhibitionDate(tuple.get(1, Date.class));
		}
		return schedules;
	}
	
	
}
