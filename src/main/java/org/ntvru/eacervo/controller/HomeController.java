package org.ntvru.eacervo.controller;

import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;

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
			   
			   System.out.println("Client IP: "+ipAddress+" Date: "+ new GregorianCalendar());
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
	@RequestMapping("/solicitante")
	public String getRequestorPage(){		
		return "solicitantes/form";
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
	
	@RequestMapping("/funcao")
	public String getFunctionRegisterPage(){
		
	   return "funcoes/form";	
	}
	@RequestMapping("/departamento")
	public String getDepartmentRegisterPage(){
		return "departamentos/form";
	}
	
	
}
