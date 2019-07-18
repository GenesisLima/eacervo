package org.ntvru.eacervo.conf;

import org.ntvru.eacervo.conf.security.EacervoSecurityConfiguration;
import org.ntvru.eacervo.conf.security.EacervoSecurityInitializer;
import org.springframework.core.annotation.Order;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

@Order(1)
public class ServletSpringMVC extends
		AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		//add this: EacervoSecurityConfiguration.class
		return new Class[] {EacervoSecurityConfiguration.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		return new Class[]{AppWebConfiguration.class, JPAConfiguration.class};
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
