package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@Transactional
public class ProductsController {

	
	
	@RequestMapping("/produtos/form")
	public String form(){
		return "/produtos/form";
		
	}
	
}
