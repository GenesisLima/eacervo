package org.ntvru.eacervo.controller.security;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class AuthenticationController {

	@RequestMapping(method=RequestMethod.GET)
	public String loginPage(Model model, String error, String logout) {
		
		if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");
        
		if (logout != null)
            model.addAttribute("logout", "You have been logged out successfully.");
		
		return "/usuarios/login";
	}
	

	
	
}
