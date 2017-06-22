package org.ntvru.eacervo.dao;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

import org.springframework.stereotype.Service;

@Service
public class DAOUtility<T> {

	private String className;
	private T type;
	private Class clazz;
	private Class entityClass;
	
	public <T> void reflect(T t){
		Type type = t.getClass().getGenericSuperclass();
		clazz = t.getClass();
	    
	    ParameterizedType pt = (ParameterizedType) type;
	    this.entityClass = ((Class)pt.getActualTypeArguments()[0]);
	    this.className = ((Class)pt.getActualTypeArguments()[0]).getSimpleName();
	  
		
	}

	public String getClassName() {
		return className;
	}
	
	public Class getType(){
		
		return clazz;
	}
	
	public Class getEntityClass() {
		return entityClass;
	}

	
	
	
}
