package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.TopicDAO;
import org.ntvru.eacervo.models.Topic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Transactional
@RequestMapping("/temas")
public class TopicController {
   
	@Autowired
	private TopicDAO topicDAO;	
	
	@RequestMapping("/form")
	public String form(){
		return "/temas/form";
		
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Topic topic, RedirectAttributes redirectAttributes){
		topicDAO.save(topic);
		ModelAndView modelAndView = new ModelAndView("redirect:temas");
		String info = "success";
		String mensagem = "Tema Cadastrado com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("/temas/list");
		modelAndView.addObject("temas",topicDAO.list());		
		return modelAndView;
	}
	
	@RequestMapping(value="/remove/{id}",method=RequestMethod.GET)
	public ModelAndView remove(@PathVariable("id") int id){		
		this.topicDAO.remove(id);
		ModelAndView modelAndView = new ModelAndView("redirect:/temas");
		modelAndView.addObject("temas",topicDAO.list());
		return modelAndView;
	}
	
}
       