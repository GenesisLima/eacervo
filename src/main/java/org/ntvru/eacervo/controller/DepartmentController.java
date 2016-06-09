package org.ntvru.eacervo.controller;

import java.util.List;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Transactional
@RequestMapping("/departamentos")
public class DepartmentController {
	
	@Autowired
	private GenericDAO<Department> departmentDAO;
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Department department, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView;
		System.out.println("DEPT ID :"+department.getId());
 		if(department.getId()==0){
		departmentDAO.save(department);
		modelAndView = new ModelAndView("redirect:departamentos");
 		}else{
 			departmentDAO.save(department);
 			modelAndView = new ModelAndView("/departamentos/list");
 		}
		String info = "success";
		String mensagem = "Departamento Cadastrado com sucesso!";		
		redirectAttributes.addFlashAttribute("info", info);
		redirectAttributes.addFlashAttribute("mensagem", mensagem);		
	  return modelAndView;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView modelAndView = new ModelAndView("/departamentos/list");	
		modelAndView.addObject("departments",departmentDAO.list());		
		return modelAndView; 
	}
	
	@RequestMapping(value="/departmentsJSON", method=RequestMethod.GET)
	public @ResponseBody List<Department> listDepartmentsJSON(){	
		System.out.println("REQUEST DEPARTAMENTO AJAX ");
		return departmentDAO.list();
	}

}
