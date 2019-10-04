package org.ntvru.eacervo.controller;

import javax.persistence.Entity;
import javax.transaction.Transactional;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Entity
@Transactional
@RequestMapping("/operacoes")
public class OperationController {

	
	@RequestMapping(name="/incidente",method = RequestMethod.POST)
	public String saveReport() {
		
		return "";
	} 
}
