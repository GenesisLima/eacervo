package org.ntvru.eacervo.controller;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.EmployeeDAO;
import org.ntvru.eacervo.dao.FunctionDAO;
import org.ntvru.eacervo.models.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//Classe que representa os Servidores da instituição
@Controller
@Transactional
public class EmployeesController {
    
	@Autowired
	private EmployeeDAO employeeDAO;
	
	@Autowired
	private FunctionDAO functionDAO;
	
	
	@RequestMapping("/servidores")
	public String save(Employee employee, @RequestParam(value="funcaoId") int functionId){
		System.out.println("Cadastrando o servidor "+employee);
		
		employee.setFunction(functionDAO.getById(functionId));
		employeeDAO.save(employee);
		return "index";
	}
	
	@RequestMapping("/servidores/form")
	public String form(){
		return "servidores/form";
		
	}
	
}
