package org.ntvru.eacervo.conf;

import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import javax.servlet.FilterRegistration.Dynamic;

import org.springframework.context.annotation.Bean;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.github.dandelion.core.web.DandelionFilter;
import com.github.dandelion.core.web.DandelionServlet;
import com.github.dandelion.datatables.core.web.filter.DatatablesFilter;

public class ServletSpringMVC extends
		AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		return new Class[]{AppWebConfiguration.class,JPAConfiguration.class};
	}

	@Override
	protected String[] getServletMappings() {
		
		return new String[]{"/"};
		//,"/*","/dandelion-assets/*"
	}
	 
	
//	@Override
//	public void onStartup(ServletContext servletContext)
//			throws ServletException {
//		 String dandelionServlet = "DandelionServlet";
//		 String dandelionFilter = "DandelionFilter";
//		 String datatablesFilter = "DatatablesFilter";
//		 Map<String, String> initParams = new HashMap<String, String>();
//		// initParams.put("param1", "value1");
//		// initParams.put("param2", "value2");
//		 
//		 String[] urlPatterns = new String[]{"/dandelion-assets/*"};
//		 
//		 ServletRegistration.Dynamic addServlet = servletContext.addServlet(dandelionServlet, DandelionServlet.class);
//		 addServlet.addMapping(urlPatterns);
//		// addServlet.setInitParameters(initParams);
//		 
//		 servletContext.addFilter(dandelionFilter, DandelionFilter.class).addMappingForUrlPatterns(null, true, "/*");
//		 servletContext.addFilter(datatablesFilter, DatatablesFilter.class).addMappingForUrlPatterns(null, true, "/*");
//	}
//	
	  


	
}
