package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.EmployeeDAO;
import org.ntvru.eacervo.models.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//Classe que representa os Servidores da instituição
@Controller
@Transactional
public class EmployeesController {
    
	@Autowired
	private EmployeeDAO employeeDAO;
	
	
	@RequestMapping("/servidores")
	public String save(Employee employee){
		System.out.println("Cadastrando o servidor "+employee);
		employeeDAO.save(employee);
		return "index";
	}
	
	@RequestMapping("/servidores/form")
	public String form(){
		return "/servidores/form";
		
	}
	
}
