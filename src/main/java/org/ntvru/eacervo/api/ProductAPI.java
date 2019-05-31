package org.ntvru.eacervo.api;

import java.util.List;

import javax.ws.rs.Produces;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api/v1/product")
public class ProductAPI {

	@Autowired
	private GenericDAO<Product> dao;
	
	@RequestMapping(value="/{name}",method=RequestMethod.GET)
	@Produces("application/json")
	public @ResponseBody List<Product> getProductsByName(@PathVariable String name){		
		return dao.getEntitiesByNames(name);		
	}
	
}
