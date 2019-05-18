package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Block;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
@Controller
@Transactional
@RequestMapping("/blocos")
public class BlockController {

	@Autowired
	private GenericDAO<Block> blockDAO;
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Block block, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		//System.out.println("BLOCK ID :"+block.getId());
 		if(block==null){
		blockDAO.save(block);
		modelAndView = new ModelAndView("redirect:blocks");
 		}else{
 			blockDAO.save(block);
 			modelAndView = new ModelAndView("/blocos/list");
 		}
		String info = "success";
		String mensagem = "Bloco cadastrada com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("blocos/list");	
		modelAndView.addObject("blocks", blockDAO.list());		
		return modelAndView; 
	}
	
	@RequestMapping(value="/remove/{id}",method=RequestMethod.GET)
	public ModelAndView remove(@PathVariable("id") int id){		
		this.blockDAO.remove(id);
		ModelAndView modelAndView = new ModelAndView("redirect:/blocos");
		modelAndView.addObject("blocks",blockDAO.list());
		return modelAndView;
	}
}
