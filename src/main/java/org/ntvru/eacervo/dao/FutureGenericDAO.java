package org.ntvru.eacervo.dao;

import java.io.Serializable;
//TODO: Refactoring - Improve in the future with Generic DAO approach 
import java.util.List;

public interface FutureGenericDAO <T, PK extends Serializable> {
      //Persist the t object in database
	 public void save(T t);
	 //List all objects from database
	 public List<T> list();
	 
	 //Remove a object from database
	 public void remove(int id);
	 
	 //Get a object by id
	 public T getById(int id);
	
}
