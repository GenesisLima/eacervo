package org.ntvru.eacervo.dao;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

import org.springframework.stereotype.Service;

@Service
public class DAOUtility<T> {

	private String className;
	private T type;
	private Class clazz;
	
	public <T> void reflect(T t){
		Type type = t.getClass().getGenericSuperclass();
		clazz = t.getClass();
	    
	    ParameterizedType pt = (ParameterizedType) type;
	    this.className = ((Class)pt.getActualTypeArguments()[0]).getSimpleName();
	  
		
	}

	public String getClassName() {
		return className;
	}
	
	public Class getType(){
		
		return clazz;
	}

	
	
	
}
