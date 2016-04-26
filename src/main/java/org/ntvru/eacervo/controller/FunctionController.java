package org.ntvru.eacervo.controller;

import java.util.List;

import org.ntvru.eacervo.dao.FunctionDAO;
import org.ntvru.eacervo.models.Function;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Transactional
@RequestMapping("/funcoes")
public class FunctionController {

	@Autowired
	private FunctionDAO functioDAO;
	
	@RequestMapping("/form")
	public String form(){		
		return "/funcoes/form";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Function function, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		System.out.println("FUNCTION ID :"+function.getId());
 		if(function.getId()==0){
		functioDAO.save(function);
		modelAndView = new ModelAndView("redirect:funcoes");
 		}else{
 			functioDAO.save(function);
 			modelAndView = new ModelAndView("/funcoes/list");
 		}
		String info = "success";
		String mensagem = "Função Cadastrada com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("funcoes/list");	
		modelAndView.addObject("functions", functioDAO.list());		
		return modelAndView; 
	}
	
	@RequestMapping(value="/remove/{id}",method=RequestMethod.GET)
	public ModelAndView remove(@PathVariable("id") int id){		
		this.functioDAO.remove(id);
		ModelAndView modelAndView = new ModelAndView("redirect:/funcoes");
		modelAndView.addObject("temas",functioDAO.list());
		return modelAndView;
	}
//	@RequestMapping(value="/functionsJSON", method=RequestMethod.GET)
//	public String functionsOfEmployeeJSON(){
//		// ModelAndView modelAndView = new ModelAndView("/funcoes/form");	
//		 String gson = new Gson().toJson(functioDAO.list());
//		 System.out.println("GSON "+gson);
//		  // modelAndView.addObject("functions",gson );
//		return gson;
//	}
	@RequestMapping(value="/functionsJSON", method=RequestMethod.GET)
	public @ResponseBody List<Function> listJSONFunctions(){		
		return functioDAO.list();
	}
} 
