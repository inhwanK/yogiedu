package org.hustar.yogiedu.config.auth;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@EnableWebSecurity
public class SecurtiyConfig extends WebSecurityConfigurerAdapter {

	private final CustomOAuth2UserService custoOAuth2UserService;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http
			.csrf().disable()
			.headers().frameOptions().disable()
		.and()
			.authorizeRequests()
			.antMatchers().authenticated()
			.anyRequest().permitAll()
		.and()
			.oauth2Login()
			.userInfoEndpoint()
			.userService(custoOAuth2UserService);
	}

}
