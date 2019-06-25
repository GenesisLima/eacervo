package org.ntvru.eacervo.api;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Tuple;
import javax.ws.rs.Produces;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.Product;
import org.ntvru.eacervo.models.dto.ProductDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
@RequestMapping("/api/v1/product")
public class ProductAPI {

	@Autowired
	private GenericDAO<Product> dao;
	
	@RequestMapping(method=RequestMethod.GET)
	@Produces("application/json")
	public @ResponseBody List<ProductDTO> listgroupsJSON(@RequestParam("type") String type){		
		if(type.trim().equalsIgnoreCase("json"));	
		return convertTupleListToProduct(dao.getEntitiesByAttributes("id","name"));
	}
		
	
	
	private List<ProductDTO> convertTupleListToProduct(List<Tuple> tupleList) {
		List<ProductDTO> products = new ArrayList<ProductDTO>();
		for(Tuple t: dao.getEntitiesByAttributes("id","name")) {
			 ProductDTO product = new ProductDTO((Integer)t.get("id"),(String) t.get("name"));
			 products.add(product);;
		}	
		return products;
	}
	
	
}
