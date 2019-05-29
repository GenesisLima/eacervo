package org.ntvru.eacervo.test;

import java.util.List;

import org.ntvru.eacervo.dao.TopicDAO;
import org.ntvru.eacervo.models.Topic;

public class TestDAO {

	public static void main(String[] args) {
		TopicDAO dao = new TopicDAO();
		List<Topic> topics = dao.getByName("Tema");
		System.out.println(topics.get(1).getName());
	}

}
