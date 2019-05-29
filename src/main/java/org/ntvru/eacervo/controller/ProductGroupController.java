package org.ntvru.eacervo.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.ProductGroup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@Transactional
@RequestMapping("/gruposprodutos")
public class ProductGroupController {

	@Autowired
	private GenericDAO<ProductGroup> productGroupDAO;
	

	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(ProductGroup product, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		System.out.println("DEPT ID :"+product.getId());
 		if(product.getId()==0){
 			productGroupDAO.save(product);
		modelAndView = new ModelAndView("redirect:gruposprodutos");
 		}else{
 			productGroupDAO.save(product);
 			modelAndView = new ModelAndView("/gruposprodutos/list");
 		}
		String info = "success";
		String mensagem = "Produto Cadastrado com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("/gruposprodutos/list");	
		modelAndView.addObject("productGroups",productGroupDAO.list());		
		return modelAndView; 
	}
	
	@RequestMapping(value="/remove/{id}",method=RequestMethod.GET)
	public ModelAndView remove(@PathVariable("id") int id){		
		this.productGroupDAO.remove(id);
		ModelAndView modelAndView = new ModelAndView("redirect:/gruposprodutos");
		modelAndView.addObject("productGroups",productGroupDAO.list());
		return modelAndView;
	}
	
	
	@RequestMapping(value="/groups", method=RequestMethod.GET)
	public @ResponseBody List<ProductGroup> listgroupsJSON(@RequestParam("type") String dataType){	
		System.out.println("REQUEST "+this.toString()+" AJAX ");
		if(dataType.toLowerCase().equals("json")) {
		return productGroupDAO.list();
		}
		return null;
	}
	
	
	
}
