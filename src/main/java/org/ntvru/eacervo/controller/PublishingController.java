package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Publishing;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Transactional
@RequestMapping("/veiculacoes")
public class PublishingController {
	
	@Autowired
	private GenericDAO<Publishing> publishingDAO;
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Publishing publishing, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		System.out.println("AREA ID :"+publishing.getId());
 		if(publishing.getId()==0){
 			publishingDAO.save(publishing);
		modelAndView = new ModelAndView("redirect:veiculacoes");
 		}else{
 			publishingDAO.save(publishing);
 			modelAndView = new ModelAndView("/veiculacoes/list");
 		}
		String info = "success";
		String mensagem = "Veiculação cadastrada com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("veiculacoes/list");	
		modelAndView.addObject("publishings", publishingDAO.list());		
		return modelAndView; 
	}
	
	@RequestMapping(value="/remove/{id}",method=RequestMethod.GET)
	public ModelAndView remove(@PathVariable("id") int id){		
		this.publishingDAO.remove(id);
		ModelAndView modelAndView = new ModelAndView("redirect:/veiculacoes");
		modelAndView.addObject("publishings",publishingDAO.list());
		return modelAndView;
	}
	
}
