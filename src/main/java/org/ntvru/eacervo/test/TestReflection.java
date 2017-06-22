package org.ntvru.eacervo.test;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

import org.ntvru.eacervo.dao.AreaDAO;
import org.ntvru.eacervo.dao.DAOUtility;
import org.ntvru.eacervo.dao.DepartmentDAO;

public class TestReflection {

	public static void main(String[] args) {
		Type type = DepartmentDAO.class.getGenericSuperclass();
	   // System.out.println(type); 
	    ParameterizedType pt = (ParameterizedType) type;
	   // Class<T implements Serializable> paramType = pt.getActualTypeArguments()[0];
	    //System.out.println(((Class)pt.getActualTypeArguments()[0]).getSimpleName());
	  //  System.out.println(type.getTypeName());
	   System.out.println(pt.getRawType());	    

	    //new DAOUtility().reflect(new AreaDAO());
	   AreaDAO a = new AreaDAO();
	   a.getById(1);
	   
	}

}
