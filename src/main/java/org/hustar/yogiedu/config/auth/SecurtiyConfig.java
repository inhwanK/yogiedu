package org.hustar.yogiedu.config.auth;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@EnableWebSecurity
public class SecurtiyConfig extends WebSecurityConfigurerAdapter {

	private final CustomOAuth2UserService customOAuth2UserService;

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
			.userService(customOAuth2UserService);
		
		http
			.formLogin()
			.loginPage("/oauth2/authorization/google")
			.defaultSuccessUrl("/")
			.permitAll();
		
		http
			.logout()
			.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
			.logoutSuccessUrl("/")
			.invalidateHttpSession(true);
	}

}
