package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.TopicDAO;
import org.ntvru.eacervo.models.Topic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Transactional
public class TopicController {
   
	@Autowired
	private TopicDAO topicDAO;	
	
	@RequestMapping("/temas/form")
	public String form(){
		return "/temas/form";
		
	}
	
	@RequestMapping(value="/temas",method=RequestMethod.POST)
	public String save(Topic topic){
		topicDAO.save(topic);
	  return "index";
	}
	@RequestMapping(value="/temas",method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("temas/list");
		modelAndView.addObject("temas",topicDAO.list());
		System.out.println("Valores: "+topicDAO.list().get(0).getName());
		return modelAndView;
	}
}
       