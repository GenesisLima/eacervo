package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.TopicDAO;
import org.ntvru.eacervo.models.Topic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Transactional
public class TopicController {
   
	@Autowired
	private TopicDAO topicDAO;	
	
	@RequestMapping("/temas/form")
	public String form(){
		return "/temas/form";
		
	}
	
	@RequestMapping("/temas")
	public String save(Topic topic){
		topicDAO.save(topic);
	  return "index";
	}
}
       