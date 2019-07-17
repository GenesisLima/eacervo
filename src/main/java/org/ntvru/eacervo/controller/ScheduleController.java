package org.ntvru.eacervo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.ScheduleDAO;
import org.ntvru.eacervo.models.Schedule;
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
	

	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request, RedirectAttributes redirectAttributes){
		Map<String, String[]> requestValues = request.getParameterMap();
		System.out.println("REQUEST KEYS "+requestValues.keySet());
		System.out.println("REQUEST VALUES "+requestValues.values());
		ModelAndView modelAndView;
//		System.out.println("DEPT ID :"+schedule.getId());
// 		if(schedule.getId().trim().equals("") || schedule.getId() != null){
// 			dao.save(schedule);
//		modelAndView = new ModelAndView("redirect:programacoes");
// 		}else{
// 			dao.save(schedule);
 			modelAndView = new ModelAndView("/programacoes/list");
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
	
}
