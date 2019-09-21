package org.ntvru.eacervo.security.controller;

import org.ntvru.eacervo.security.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/users")
public class UserController {

	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(value="list",method=RequestMethod.GET)
	public ModelAndView listUsers(ModelAndView modelAndView) {
		modelAndView.setViewName("/admin/users/list");	
		modelAndView.addObject("users",userDAO.list());	
		return modelAndView;
	}
}
