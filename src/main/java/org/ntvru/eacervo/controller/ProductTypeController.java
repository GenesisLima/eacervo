package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Product;
import org.ntvru.eacervo.models.ProductType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@Transactional
@RequestMapping("/tiposprodutos")
public class ProductTypeController {

	@Autowired
	private GenericDAO<ProductType> productTypeDAO;
	

	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(ProductType product, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		System.out.println("DEPT ID :"+product.getId());
 		if(product.getId()==0){
 			productTypeDAO.save(product);
		modelAndView = new ModelAndView("redirect:tiposprodutos");
 		}else{
 			productTypeDAO.save(product);
 			modelAndView = new ModelAndView("/tiposprodutos/list");
 		}
		String info = "success";
		String mensagem = "Produto Cadastrado com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("/tiposprodutos/list");	
		modelAndView.addObject("productTypes",productTypeDAO.list());		
		return modelAndView; 
	}
	
}
