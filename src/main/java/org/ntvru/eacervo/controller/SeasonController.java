package org.ntvru.eacervo.controller;



import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Season;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Transactional
@RequestMapping("/temporadas")
public class SeasonController {
    
	@Autowired
	private GenericDAO<Season> dao;
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Season season, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		System.out.println("ID :"+season.getId());
 		if(season.getId()==0){
 			dao.save(season);
		//modelAndView = new ModelAndView("redirect:temporadas");
 		}else{
 			dao.save(season);
 			
 		}
 		modelAndView = new ModelAndView("redirect:temporadas");
		String info = "success";
		String mensagem = "Temporada cadastrada com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("temporadas/list");	
		modelAndView.addObject("seasons", dao.list());		
		return modelAndView; 
	}
	
	@RequestMapping(value="/remove/{id}",method=RequestMethod.GET)
	public ModelAndView remove(@PathVariable("id") int id){		
		this.dao.remove(id);
		ModelAndView modelAndView = new ModelAndView("redirect:/temporadas");
		modelAndView.addObject("seasons",dao.list());
		return modelAndView;
	}

}
