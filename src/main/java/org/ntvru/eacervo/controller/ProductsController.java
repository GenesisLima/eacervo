package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Product;
import org.ntvru.eacervo.models.ProductGroup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@Transactional
@RequestMapping("/produtos")
public class ProductsController {

	@Autowired
	private GenericDAO<Product> productDAO;
	

	@Autowired
	private GenericDAO<ProductGroup> productGroupDAO;
	
//	@Autowired 
//	private GenericDAO<ProductType> productTypeDAO;
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Product product, @RequestParam("productGroupId") int productGroupId, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		System.out.println("PRODUCT ID :"+product.getId());
 		if(product.getId()==0){
 			product.setProductGroup(productGroupDAO.getById(productGroupId));
// 			product.setProductType(productTypeDAO.getById(productType));
 			productDAO.save(product);
		modelAndView = new ModelAndView("redirect:produtos");
 		}else{
 			product.setProductGroup(productGroupDAO.getById(productGroupId));
 			productDAO.save(product);
 			modelAndView = new ModelAndView("/produtos/list");
 		}
		String info = "success";
		String mensagem = "Produto Cadastrado com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("/produtos/list");	
		modelAndView.addObject("products",productDAO.list());		
		return modelAndView; 
	}
	
	@RequestMapping(value="/remove/{id}",method=RequestMethod.GET)
	public ModelAndView remove(@PathVariable("id") int id){		
		this.productDAO.remove(id);
		ModelAndView modelAndView = new ModelAndView("redirect:/produtos");
		modelAndView.addObject("products",productGroupDAO.list());
		return modelAndView;
	}
	
}
