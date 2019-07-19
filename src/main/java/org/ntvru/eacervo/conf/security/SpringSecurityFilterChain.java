package org.ntvru.eacervo.conf.security;

import org.springframework.security.web.DefaultSecurityFilterChain;
import org.springframework.web.filter.DelegatingFilterProxy;

public class SpringSecurityFilterChain extends DelegatingFilterProxy {

	public SpringSecurityFilterChain(DefaultSecurityFilterChain defaultSecurityFilterChain) {
		
	}

}
