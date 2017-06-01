package org.ntvru.eacervo.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.DepartmentDAO;
import org.ntvru.eacervo.dao.EmployeeDAO;
import org.ntvru.eacervo.dao.FunctionDAO;
import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Department;
import org.ntvru.eacervo.models.Employee;
import org.ntvru.eacervo.models.Function;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//Classe que representa os Servidores da instituição
@Controller
@Transactional
@RequestMapping("/servidores")
public class EmployeesController {
    
	@Autowired
	private GenericDAO<Employee> employeeDAO;
	
	@Autowired
	private GenericDAO<Function> functionDAO;
	
	@Autowired
	private GenericDAO<Department> departamentDAO;
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Employee employee, @RequestParam(value="functionId") int functionId, @RequestParam(value="departmentId") int departmentId, @RequestParam(value="employeeId", required=false) Integer employeeId, RedirectAttributes redirectAttributes ){
		System.out.println("Cadastrando o servidor "+employee);
		
		ModelAndView modelAndView;
		System.out.println("FUNCTION ID :"+employee.getId());
 		if(employee.getId()==0){
        employee.setFunction(functionDAO.getById(functionId));
		employee.setDepartment(departamentDAO.getById(departmentId));
		if(employeeId !=null){
			System.out.println("ID EMPREGADO: "+employeeId);
		employee.setParent(employeeDAO.getById(employeeId));
		}
		employeeDAO.save(employee);
		
		modelAndView = new ModelAndView("redirect:servidores");
 		}else{
 			employeeDAO.save(employee);
 			modelAndView = new ModelAndView("/servidores/list");
 		}
		String info = "success";
		String mensagem = "Empregado Cadastrada com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
		
		
		
	}
	
//	@RequestMapping("/servidores/form")
//	public String form(){
//		return "servidores/form";
//		
//	}
//	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("servidores/list");	
		modelAndView.addObject("employees", employeeDAO.list());		
		return modelAndView; 
	}
	
	@RequestMapping(value="/employeesJSON", method=RequestMethod.GET)
	public @ResponseBody List<Employee> listEmployeesJSON(){	
		
		return employeeDAO.list();
	}
	
	
}
