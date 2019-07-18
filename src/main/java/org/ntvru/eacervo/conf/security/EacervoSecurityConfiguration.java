package org.ntvru.eacervo.conf.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.DefaultSecurityFilterChain;
import org.springframework.security.web.FilterChainProxy;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class EacervoSecurityConfiguration extends WebSecurityConfigurerAdapter{

	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		//.antMatchers("/messagePost*").hasRole("USER") 
		//http.addFilter(new FilterChainProxy(new DefaultSecurityFilterChain(new AntPathRequestMatcher("/**"))));
	    http.authorizeRequests().antMatchers("/*").hasRole("USER")	    
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
	
//	@Bean
//    public FilterChainProxy springSecurityFilterChain() {
//        return new FilterChainProxy(new DefaultSecurityFilterChain(new AntPathRequestMatcher("/**")));
//    }
}
