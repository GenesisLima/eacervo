package org.ntvru.eacervo.api;

import java.util.List;

import javax.ws.rs.Produces;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.ProductGroup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api/v1/productgroup")
public class ProductGroupAPI {

	@Autowired
	private GenericDAO<ProductGroup> productGroupDAO;
	
	@RequestMapping(method=RequestMethod.GET)
	@Produces("application/json")
	public @ResponseBody List<ProductGroup> listgroupsJSON(@RequestParam("type") String type){	
		if(type.trim().equals("json"));
		List<ProductGroup> pgs = productGroupDAO.list();
		System.out.println("PGS "+pgs.get(0).getName());
		return pgs;		
	}
	
	
}
