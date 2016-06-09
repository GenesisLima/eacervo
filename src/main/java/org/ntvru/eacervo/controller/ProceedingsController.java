package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Area;
import org.ntvru.eacervo.models.Proceedings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Transactional
@RequestMapping("/procedimentos")
public class ProceedingsController {


	@Autowired
	private GenericDAO<Proceedings> proceedingsDAO;
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Proceedings proceedings, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		System.out.println("PROCEDIMENTO ID :"+proceedings.getId());
 		if(proceedings.getId()==0){
		proceedingsDAO.save(proceedings);
		modelAndView = new ModelAndView("redirect:procedimentos");
 		}else{
 			proceedingsDAO.save(proceedings);
 			modelAndView = new ModelAndView("/procedimentos/list");
 		}
		String info = "success";
		String mensagem = "Procedimento cadastrada com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("procedimentos/list");	
		modelAndView.addObject("procedimentos", proceedingsDAO.list());		
		return modelAndView; 
	}
	
	@RequestMapping(value="/remove/{id}",method=RequestMethod.GET)
	public ModelAndView remove(@PathVariable("id") int id){		
		this.proceedingsDAO.remove(id);
		ModelAndView modelAndView = new ModelAndView("redirect:/procedimentos");
		modelAndView.addObject("procedimentos",proceedingsDAO.list());
		return modelAndView;
	}
	
	
	
	
	
	
}
