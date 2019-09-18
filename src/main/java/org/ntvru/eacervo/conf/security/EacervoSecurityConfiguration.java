package org.ntvru.eacervo.conf.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class EacervoSecurityConfiguration extends WebSecurityConfigurerAdapter{

	
//	@Autowired
//	private EAcervoDataSource dataSource;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {

	    http.authorizeRequests().antMatchers("/*").hasRole("ADMIN")
	    .antMatchers("/*").hasAnyRole("USER")
	    .anyRequest()
	    .authenticated()
	    .and()
	    .formLogin()
	    .loginPage("/login")
	    .permitAll()
	    .and()
		.exceptionHandling().accessDeniedPage("/login/access_denied")
		.and()
		.logout()
		.logoutSuccessUrl("/login?logout")
		.permitAll()
		.and()
		.rememberMe()
		.and()
		.csrf()
		.disable();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		//super.configure(auth); 
//		auth.inMemoryAuthentication().withUser("admin").password("secret").authorities("ROLE_ADMIN","ROLE_USER")
//         .and().withUser("user").password("tvu").authorities("ROLE_USER");

		DriverManagerDataSource dataSource = new DriverManagerDataSource();
    	dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
    	dataSource.setUrl("jdbc:mysql://localhost:3306/eacervo_db?useTimezone=true&serverTimezone=UTC");
    	dataSource.setUsername("dev");
    	dataSource.setPassword("dev");       
		auth.jdbcAuthentication().dataSource(dataSource);
		 
	}
	
	@Override
    @Bean
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

}
