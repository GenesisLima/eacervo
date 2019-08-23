package org.ntvru.eacervo.controller;

import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
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
		   Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            
		
		   if(authentication.getAuthorities().size()==1 && authentication.getAuthorities().stream().findFirst().get().getAuthority().equals("ROLE_USER")) {
		  
			   return "operacoes/list";
		   
		   }
		return "index";		
	}
	@RequestMapping("/servidor")
	@Secured("ROLE_ADMIN")
	public String getEmployeeRegisterPage(){
		return "servidores/view";		
	}
	
	@RequestMapping("/produto")
	@Secured("ROLE_ADMIN")
	public String getProductRegisterPage(){
		return "produtos/view";
	}
	@RequestMapping("/area")
	@Secured("ROLE_ADMIN")
	public String getAreaRegisterPage(){
		return "areas/view";
	}
	@RequestMapping("/solicitante")
	@Secured("ROLE_ADMIN")
	public String getRequestorPage(){		
		return "solicitantes/form";
	}
	@RequestMapping("/tema")
	@Secured("ROLE_ADMIN")
	public String getTopicRegisterPage(){
		return "temas/view";		
	}
	@RequestMapping("/tipomidia")
	@Secured("ROLE_ADMIN")
	public String getMediaRegisterPage(){
		return	"tiposmidias/view";	
	}
	
	@RequestMapping("/procedimento")
	@Secured("ROLE_ADMIN")
	public String getProcedureRegisterPage(){
		return "procedimentos/view";
	}
	
	@RequestMapping("/funcao")
	@Secured("ROLE_ADMIN")
	public String getFunctionRegisterPage(){
		return "funcoes/view";	
	}
	@RequestMapping("/departamento")
	@Secured("ROLE_ADMIN")
	public String getDepartmentRegisterPage(){
		return "departamentos/view";
	}
	
	@RequestMapping("/tipoproduto")
	@Secured("ROLE_ADMIN")
	public String getProductTypeRegisterPage(){
		return "tiposprodutos/view";
	}
	
	@RequestMapping("/grupoproduto")
	@Secured("ROLE_ADMIN")
	public String getProductGroupRegisterPage(){
		return "gruposprodutos/view";
	}
	
	@RequestMapping("/temporada")
	@Secured("ROLE_ADMIN")
	public String getSeasonGroupRegisterPage(){
		return "temporadas/view";
	}
	
	@RequestMapping("/veiculacao")
	@Secured("ROLE_ADMIN")
	public String getPublishingGroupRegisterPage(){
		return "veiculacoes/view";
	}
	
	@RequestMapping("/episodio")
	@Secured("ROLE_ADMIN")
	public String getEpisodeGroupRegisterPage(){
		return "episodios/view";
	}
	
	@RequestMapping("/bloco")
	@Secured("ROLE_ADMIN")
	public String getBlockGroupRegisterPage(){
		return "blocos/view";
	}
	
	@RequestMapping("/programacao")
	@Secured("ROLE_ADMIN")
	public String getSchenduleRegisterPage(){
		return "programacao/view";
	}
	
	@RequestMapping("/origem")
	@Secured("ROLE_ADMIN")
	public String getOrigemRegisterPage(){
		return "origens/view";
	}
	
	@RequestMapping("/insercao")
	@Secured("ROLE_ADMIN")
	public String getInsercaoRegisterPage(){
		return "insercoes/view";
	}
	
	@RequestMapping("/operacao")
	@Secured("ROLE_USER")
	public String getOperacaoRegisterPage(){
		return "operacoes/view";
	}
}
