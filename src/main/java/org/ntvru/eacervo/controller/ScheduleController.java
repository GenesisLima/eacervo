package org.ntvru.eacervo.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.ScheduleDAO;
import org.ntvru.eacervo.dao.ScheduleItemDAO;
import org.ntvru.eacervo.models.Schedule;
import org.ntvru.eacervo.models.ScheduleItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@Transactional
@RequestMapping("/programacoes")
public class ScheduleController {

	@Autowired
	private ScheduleDAO dao;
	
	@Autowired
	private ScheduleItemDAO scheduleItemDAO;
	
	

	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request, RedirectAttributes redirectAttributes){
		dao.save(scheduleViewToModelConverter(request));
		//System.out.println("REQUEST VALUES "+);
		//requestValues.forEach((k,v)->System.out.println("Item : " + k + " Count : " + Arrays.asList(v)));
		ModelAndView modelAndView;
//		System.out.println("DEPT ID :"+schedule.getId());
// 		if(schedule.getId().trim().equals("") || schedule.getId() != null){
// 			dao.save(schedule);
		modelAndView = new ModelAndView("redirect:programacao");

		//modelAndView = new ModelAndView("redirect:programacoes");
// 		}else{
// 			dao.save(schedule);
 			//modelAndView = new ModelAndView("/programacoes/list");
// 		}
		String info = "success";
		String mensagem = "Programação efetuada com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("/programacoes/list");	
		modelAndView.addObject("productTypes",dao.list());		
		return modelAndView; 
	}
	@RequestMapping(value="/remove/{id}",method=RequestMethod.GET)
	public ModelAndView remove(@PathVariable("id") int id){		
		this.dao.remove(id);
		ModelAndView modelAndView = new ModelAndView("redirect:/programacoes");
		modelAndView.addObject("schedules",dao.list());
		return modelAndView;
	}
	
	@RequestMapping(value="/scheduleJSON", method=RequestMethod.GET)
	public @ResponseBody List<Schedule> listJSON(){	
		System.out.println("REQUEST "+this.toString()+" AJAX ");
		return dao.list();
	}
	
	private Schedule scheduleViewToModelConverter(HttpServletRequest request) {
		Map<String, String[]> requestValues = request.getParameterMap();
		Schedule schedule = new Schedule();			
		
		schedule.setExhibitionDate(Date.valueOf(LocalDate.now()));
		 
		
		   Iterator entryIter = requestValues.keySet().iterator();
		   ScheduleItem scheduleItem = null;
		   while (entryIter.hasNext()) {
			  String entry = (String)entryIter.next();
			  
			  
		      if(entry.contains("productepisode")) {
		    	  if(scheduleItem==null) {
		    		  scheduleItem = new ScheduleItem();
		    		  scheduleItem.setEpisodeName(requestValues.get(entry)[0]);
		    	  }
		      }
		      if(entry.contains("productname")) { 
		    	  if(scheduleItem!=null) {
		    		  scheduleItem.setProductName(requestValues.get(entry)[0]);
		    	  }
			      }
		      if(entry.contains("programgroup")) { 
		    	  if(scheduleItem!=null) {
		    		  scheduleItem.setProductType(requestValues.get(entry)[0]);
		    	  }
			      }
		      if(entry.contains("programduration")) { 
		    	  if(scheduleItem!=null) {
			    	  scheduleItem.setEpisodeDuration(requestValues.get(entry)[0]);
		    	  }
			      }
		      
		      if(entry.contains("scheduleid")) { 
		    	  if(scheduleItem!=null) {
		    		
		    		scheduleItem.setScheduleItemCode(requestValues.get(entry)[0]);
		    		scheduleItemDAO.save(scheduleItem);
		    		schedule.setScheduleItems(scheduleItem);
		
				  scheduleItem = null;
		    	  }
			      }
		   }

		 
		return schedule;
		
	}
	
	
}
