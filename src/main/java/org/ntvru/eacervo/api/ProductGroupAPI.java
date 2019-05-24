package org.ntvru.eacervo.api;

import java.util.List;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.models.ProductGroup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api/v1/productgroup")
public class ProductGroupAPI {

	@Autowired
	private GenericDAO<ProductGroup> productGroupDAO;
	
	
	@RequestMapping(value="/json",method=RequestMethod.GET)
	public @ResponseBody List<ProductGroup> listgroupsJSON(){		
		return productGroupDAO.list();		
	}
	
	
}
