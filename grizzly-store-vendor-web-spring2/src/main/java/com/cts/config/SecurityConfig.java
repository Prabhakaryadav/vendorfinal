package com.cts.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
@Autowired
PasswordEncoder passwordEncoder;
@Autowired
private BookAuthenticationSuccessHandler successHandler;

@Override
protected void configure(AuthenticationManagerBuilder auth) throws Exception{
	auth.inMemoryAuthentication()
	.passwordEncoder(passwordEncoder)
	.withUser("prabhakar").password(passwordEncoder.encode("yadav")).roles("USER")
	.and()
	.withUser("vendor").password(passwordEncoder.encode("vendor")).roles("VENDOR");
}
@Bean
public PasswordEncoder passwordEncoder()
{
	return new BCryptPasswordEncoder();
}
@Override
protected void configure(HttpSecurity http) throws Exception{
	http.authorizeRequests()
	.antMatchers("/product").permitAll()
	.antMatchers("/vendor/**").hasRole("VENDOR")
	.antMatchers("/**").hasAnyRole("VENDOR","USER")
	.and().formLogin().successHandler(successHandler) //default loginform
	.and().logout().logoutSuccessUrl("/login").permitAll()
	.and().csrf().disable();
}
}
