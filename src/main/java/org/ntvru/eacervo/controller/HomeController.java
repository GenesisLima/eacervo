package org.ntvru.eacervo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
    
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping("/")
	public String index(){
		System.out.println("Página principal.");
		//String localAddress = request.getLocalAddr();
		String ipAddress = request.getHeader("X-FORWARDED-FOR");  
		   if (ipAddress == null) {  
			   ipAddress = request.getRemoteAddr(); 
			   
			   System.out.println("Client IP: "+ipAddress );
			  // System.out.println("Local IP: "+localAddress);
		   }
		return "index";		
	}
	@RequestMapping("/servidor")
	public String getEmployeeRegisterPage(){
		return "servidores/form";		
	}
	
	@RequestMapping("/produto")
	public String getProductRegisterPage(){
		return "produtos/form";
	}
	@RequestMapping("/area")
	public String getAreaRegisterPage(){
		return "areas/form";
	}
	@RequestMapping("/tema")
	public String getTopicRegisterPage(){
		return "temas/form";		
	}
	@RequestMapping("/tipomidia")
	public String getMediaRegisterPage(){
		return	"tiposmidia/form";	
	}
	
	@RequestMapping("/procedimento")
	public String getProcedureRegisterPage(){
		return "procedimentos/form";
	}
	
	@RequestMapping("funcao")
	public String getFunctionRegisterPage(){
		
	   return"funcoes/form";	
	}
	
	
}
