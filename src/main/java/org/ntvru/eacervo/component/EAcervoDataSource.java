package org.ntvru.eacervo.component;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Component;
//TODO implement this datasource
@Component
public class EAcervoDataSource {

	
	
	
	@Bean
    public DataSource getDataSource(){
	    DriverManagerDataSource dataSource = new DriverManagerDataSource();
	    	dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
	    	dataSource.setUrl("jdbc:mysql://localhost:3306/eacervo_db?useTimezone=true&serverTimezone=UTC");
	    	dataSource.setUsername("dev");
	    	dataSource.setPassword("dev");        	   
	   return dataSource;
   }
	
//	@Bean
//	public EAcervoDataSource getEacervoDataSource() {
//		return new EAcervoDataSource();
//	}
	
}
