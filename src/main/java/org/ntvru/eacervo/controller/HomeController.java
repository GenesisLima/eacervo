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
		return "servidores/view";		
	}
	
	@RequestMapping("/produto")
	public String getProductRegisterPage(){
		return "produtos/view";
	}
	@RequestMapping("/area")
	public String getAreaRegisterPage(){
		return "areas/view";
	}
	@RequestMapping("/solicitante")
	public String getRequestorPage(){		
		return "solicitantes/form";
	}
	@RequestMapping("/tema")
	public String getTopicRegisterPage(){
		return "temas/view";		
	}
	@RequestMapping("/tipomidia")
	public String getMediaRegisterPage(){
		return	"tiposmidias/view";	
	}
	
	@RequestMapping("/procedimento")
	public String getProcedureRegisterPage(){
		return "procedimentos/view";
	}
	
	@RequestMapping("/funcao")
	public String getFunctionRegisterPage(){
		return "funcoes/view";	
	}
	@RequestMapping("/departamento")
	public String getDepartmentRegisterPage(){
		return "departamentos/view";
	}
	
	@RequestMapping("/tipoproduto")
	public String getProductTypeRegisterPage(){
		return "tiposprodutos/view";
	}
	
	@RequestMapping("/grupoproduto")
	public String getProductGroupRegisterPage(){
		return "gruposprodutos/view";
	}
	
	@RequestMapping("/temporada")
	public String getSeasonGroupRegisterPage(){
		return "temporadas/view";
	}
	
	@RequestMapping("/veiculacao")
	public String getPublishingGroupRegisterPage(){
		return "veiculacoes/view";
	}
	
	@RequestMapping("/episodio")
	public String getEpisodeGroupRegisterPage(){
		return "episodios/view";
	}
	
	@RequestMapping("/bloco")
	public String getBlockGroupRegisterPage(){
		return "blocos/view";
	}
	
	@RequestMapping("/programacao")
	public String getSchenduleRegisterPage(){
		return "programacao/view";
	}
	
	@RequestMapping("/origem")
	public String getOrigemRegisterPage(){
		return "origens/view";
	}
	
	@RequestMapping("/insercao")
	public String getInsercaoRegisterPage(){
		return "insercoes/view";
	}
}
