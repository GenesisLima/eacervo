package org.ntvru.eacervo.conf;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

@EnableTransactionManagement
public class JPAConfiguration {
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
        	    	dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        	    	dataSource.setUrl("jdbc:mysql://localhost:3306/eacervo_db");
        	    	dataSource.setUsername("root");
        	    	dataSource.setPassword("umdois4");
        	   
        	   return dataSource;
           }
           
           private Properties additionalProperties(){
        	     Properties properties = new Properties();
        	     properties.setProperty("hibernate.hbm2ddl.auto", "create");
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
