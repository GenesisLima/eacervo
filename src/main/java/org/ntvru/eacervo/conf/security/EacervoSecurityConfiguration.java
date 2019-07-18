package org.ntvru.eacervo.conf.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class EacervoSecurityConfiguration extends WebSecurityConfigurerAdapter{

	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		//.antMatchers("/messagePost*").hasRole("USER") 
	    http.authorizeRequests().antMatchers("/eacervo*").hasAnyRole("USER", "ANONYMOUS")	    
	    .antMatchers("/programacao*").hasRole("ADMIM")
	    .and()
	    .formLogin();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		//super.configure(auth); 
		auth.inMemoryAuthentication().withUser("admin").password("secret").authorities("ROLE_ADMIN","ROLE_USER")
         .and().withUser("user").password("tvu").authorities("ROLE_USER");
		 
	}
}
