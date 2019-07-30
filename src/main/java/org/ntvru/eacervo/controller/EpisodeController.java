package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.EpisodeDAO;
import org.ntvru.eacervo.models.Episode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@Transactional
@RequestMapping("/episodios")
public class EpisodeController {

	
	@Autowired
	private EpisodeDAO episodeDAO;
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Episode episode, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		System.out.println("Episode ID :"+episode.getId());
 		if(episode.getId()==0){
 			episodeDAO.save(episode);
		modelAndView = new ModelAndView("redirect:episodios");
 		}else{
 			episodeDAO.save(episode);
 			modelAndView = new ModelAndView("/episodes/list");
 		}
		String info = "success";
		String mensagem = "Área cadastrada com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("episodios/list");	
		modelAndView.addObject("episodes", episodeDAO.list());		
		return modelAndView; 
	}
	
	@RequestMapping(value="/remove/{id}",method=RequestMethod.GET)
	public ModelAndView remove(@PathVariable("id") int id){		
		this.episodeDAO.remove(id);
		ModelAndView modelAndView = new ModelAndView("redirect:/episodios");
		modelAndView.addObject("episodes",episodeDAO.list());
		return modelAndView;
	}
	
}
