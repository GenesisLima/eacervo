package org.ntvru.eacervo.controller;



import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.AreaDAO;
import org.ntvru.eacervo.models.Area;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Transactional
@RequestMapping("/areas")
public class AreaController {
    
	@Autowired
	private AreaDAO areaDAO;
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Area area, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		System.out.println("AREA ID :"+area.getId());
 		if(area.getId()==0){
		areaDAO.save(area);
		modelAndView = new ModelAndView("redirect:areas");
 		}else{
 			areaDAO.save(area);
 			modelAndView = new ModelAndView("/areas/list");
 		}
		String info = "success";
		String mensagem = "Área cadastrada com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("areas/list");	
		modelAndView.addObject("areas", areaDAO.list());		
		return modelAndView; 
	}
	
	@RequestMapping(value="/remove/{id}",method=RequestMethod.GET)
	public ModelAndView remove(@PathVariable("id") int id){		
		this.areaDAO.remove(id);
		ModelAndView modelAndView = new ModelAndView("redirect:/areas");
		modelAndView.addObject("areas",areaDAO.list());
		return modelAndView;
	}
	
}
