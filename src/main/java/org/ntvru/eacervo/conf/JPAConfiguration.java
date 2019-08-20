package org.ntvru.eacervo.conf;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement
public class JPAConfiguration {
	
  
	
//	@Autowired
//	private EAcervoDataSource datasource;
	
		@Bean
	       public LocalContainerEntityManagerFactoryBean entityManagerFactory(){
	    	    LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
	    	    em.setDataSource(dataSource());
	    	    em.setPackagesToScan(new String[]{"org.ntvru.eacervo.models"});	    	    
	    	    JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
	    	    em.setJpaVendorAdapter(vendorAdapter);	    	    
	    	    em.setJpaProperties(additionalProperties());
	    	    return em;
	    	   
	       }
           @Bean
           public DataSource dataSource(){
        	    DriverManagerDataSource dataSource = new DriverManagerDataSource();
        	    	dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        	    	dataSource.setUrl("jdbc:mysql://localhost:3306/eacervo_db?useTimezone=true&serverTimezone=UTC");
        	    	dataSource.setUsername("dev");
        	    	dataSource.setPassword("dev");        	   
        	   return dataSource;
           }
           
           private Properties additionalProperties(){
        	     Properties properties = new Properties();
//        	     properties.setProperty("hibernate.hbm2ddl.auto", "create");
        	     properties.setProperty("hibernate.hbm2ddl.auto", "update"); 
        	     properties.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
        	     properties.setProperty("hibernate.show_sql", "true");        	     
        	     
        	   return properties;
           }
           
           @Bean
           public PlatformTransactionManager transactionManager (EntityManagerFactory emf){
        	   JpaTransactionManager transactionManager = new JpaTransactionManager();
        	   transactionManager.setEntityManagerFactory(emf);
        	   return transactionManager;
           }
           
          
           
}
