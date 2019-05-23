package org.ntvru.eacervo.controller;



import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Origin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Transactional
@RequestMapping("/origens")
public class OriginController {
    
	@Autowired
	private GenericDAO<Origin> dao;
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Origin origin, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		System.out.println("ORIGIN ID :"+origin.getId());
 		if(origin.getId()==0){
 			dao.save(origin);
		modelAndView = new ModelAndView("redirect:origens");
 		}else{
 			dao.save(origin);
 			modelAndView = new ModelAndView("/origens/list");
 		}
		String info = "success";
		String mensagem = "Origem cadastrada com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("origens/list");		
		modelAndView.addObject("origins", dao.list());		
		return modelAndView; 
	}
	
	@RequestMapping(value="/remove/{id}",method=RequestMethod.GET)
	public ModelAndView remove(@PathVariable("id") int id){		
		this.dao.remove(id);
		ModelAndView modelAndView = new ModelAndView("redirect:/origens");
		modelAndView.addObject("origins",dao.list());
		return modelAndView;
	}
	
}
