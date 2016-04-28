package org.ntvru.eacervo.controller;

import org.ntvru.eacervo.dao.FunctionDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Transactional
public class TestController {
 
	@Autowired
	FunctionDAO test;
	
	@RequestMapping("/test")
	public String test(){
		 System.out.println("Value: "+test.getById(1).getDescription());		
				
		return "/";
	}
	
	

}
