package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.EpisodeDAO;
import org.ntvru.eacervo.models.Episode;
import org.ntvru.eacervo.models.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@Transactional
@RequestMapping("/episodios")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class EpisodeController {

	
	@Autowired
	private EpisodeDAO episodeDAO;
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Episode episode,@RequestParam(value="productId") int productId, @RequestParam(value="productName") String productName, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		System.out.println("Episode ID :"+episode.getId());
 		if(episode.getId()==0){
 			setEpisodeProduct(episode, productId, productName);
		modelAndView = new ModelAndView("redirect:episodios");
 		}else{
 			setEpisodeProduct(episode, productId, productName);
 			modelAndView = new ModelAndView("/episodes/list");
 		}
		String info = "success";
		String mensagem = "Área cadastrada com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}


	private void setEpisodeProduct(Episode episode, int productId, String productName) {
		if(productId !=0 && (!productName.equalsIgnoreCase("") || productName!=null)) {
			Product product  = new Product();
			product.setId(productId);
			product.setName(productName);
			episode.setProduct(product);
			episodeDAO.save(episode);

		}
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
