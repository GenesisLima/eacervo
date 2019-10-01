package org.ntvru.eacervo.security.controller;

import java.util.List;

import javax.ws.rs.Produces;

import org.ntvru.eacervo.security.dao.UserDAO;
import org.ntvru.eacervo.security.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/admin/users")
public class UserController {

	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(method=RequestMethod.GET)
	public String listUsers() {		
		return "/admin/users/list";
	}
	
	@RequestMapping(value="/api/v1/list",method=RequestMethod.GET)
	@Produces("application/json")
	public @ResponseBody List<User> getUsers(){
		return userDAO.list();
	}
}

