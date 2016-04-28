package org.ntvru.eacervo.conf;

import org.ntvru.eacervo.controller.HomeController;
import org.ntvru.eacervo.dao.EmployeeDAO;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;


@EnableWebMvc
@Configuration
@ComponentScan(basePackageClasses={HomeController.class,EmployeeDAO.class})
public class AppWebConfiguration extends WebMvcConfigurerAdapter{

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
		registry.addResourceHandler("/js/*")
        .addResourceLocations("/js/");

		
	}
	
	@Override
	public void configureDefaultServletHandling(
			DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	
	
	
}
