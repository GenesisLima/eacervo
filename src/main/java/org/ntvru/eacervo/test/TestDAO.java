package org.ntvru.eacervo.test;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.dao.ProductDAO;
import org.ntvru.eacervo.models.Product;

public class TestDAO {

	public static void main(String[] args) {
//		TopicDAO dao = new TopicDAO();
//		List<Topic> topics = dao.getByName("Tema");
		
		
		ProductDAO p = new ProductDAO();		
		
		System.out.println("PRODUTOS "+p.list().size());

		//System.out.println("PRODUTOS "+p.getEntitiesByNames("Produto 1").size());
	}
	
	

}
