package org.ntvru.eacervo.conf;

import org.ntvru.eacervo.api.ProductGroupAPI;
import org.ntvru.eacervo.component.EAcervoDataSource;
import org.ntvru.eacervo.conf.security.EacervoSecurityInitializer;
import org.ntvru.eacervo.controller.HomeController;
import org.ntvru.eacervo.dao.EmployeeDAO;
import org.ntvru.eacervo.models.Product;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.resource.GzipResourceResolver;
import org.springframework.web.servlet.resource.PathResourceResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;


@EnableWebMvc
@Configuration
@EnableGlobalMethodSecurity(
		  prePostEnabled = true, 
		  securedEnabled = true, 
		  jsr250Enabled = true)
@ComponentScan(basePackageClasses={HomeController.class,EmployeeDAO.class, Product.class, ProductGroupAPI.class, EacervoSecurityInitializer.class,EAcervoDataSource.class})
public class AppWebConfiguration extends WebMvcConfigurerAdapter {

	@Bean
	public InternalResourceViewResolver internalResourceViewResolver(){
	       InternalResourceViewResolver resolver = new InternalResourceViewResolver();
	       resolver.setPrefix("/WEB-INF/views/");
	       resolver.setSuffix(".jsp");
	       return resolver;
		
	
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/*").addResourceLocations(
                "/resources/");
		registry.addResourceHandler("/js/**")
        .addResourceLocations("/js/")
        .resourceChain(true)
        .addResolver(new GzipResourceResolver())
        .addResolver(new PathResourceResolver());;

	}
	
	@Override
	public void configureDefaultServletHandling(
			DefaultServletHandlerConfigurer configurer) {		
		configurer.enable();
	}
	
	
	@Bean
	public EAcervoDataSource getEacervoDataSource() {
		return new EAcervoDataSource();
	}
	
	
}
