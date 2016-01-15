package org.ntvru.eacervo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
    
	@RequestMapping("/")
	public String index(){
		System.out.println("Página principal.");		
		return "index";		
	}
//	@RequestMapping("/servidor")
//	public String getEmployeeRegisterPage(){
//		return "servidores/form_servidor";		
//	}
	
	@RequestMapping("/produto")
	public String getProductRegisterPage(){
		return "produtos/form_produto";
	}
	@RequestMapping("/area")
	public String getAreaRegisterPage(){
		return "areas/form_area";
	}
	@RequestMapping("/tema")
	public String getTopicRegisterPage(){
		return "temas/form_tema";		
	}
	@RequestMapping("/tipomidia")
	public String getMediaRegisterPage(){
		return	"tiposmidia/form_tipomidia";	
	}
	
	@RequestMapping("/procedimento")
	public String getProcedureRegisterPage(){
		return "procedimentos/form_procedimento";
	}
}
