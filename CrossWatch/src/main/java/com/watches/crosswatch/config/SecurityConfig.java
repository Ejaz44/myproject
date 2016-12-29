package com.watches.crosswatch.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity

public class SecurityConfig extends WebSecurityConfigurerAdapter
{
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception
	{
		auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery("select username, password, enabled from User where username= ? ")
		.authoritiesByUsernameQuery("select username , rolename from user u ,role r, userrole ur where u.userid=ur.userid and r.roleid=ur.roleid and username =?");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception
	{
		http.authorizeRequests()
		.antMatchers("/Category","/SubCategory","/Supplier","/Brand","/Product").access("hasRole('ROLE_ADMIN')")
		.anyRequest().permitAll()
		.and()
		.formLogin().loginPage("/userLogin").failureUrl("/userLogin?error")
		.usernameParameter("username").passwordParameter("password").loginProcessingUrl("/perform_login").defaultSuccessUrl("/")
//		.and()
//		.logout().logoutSuccessUrl("/perform_logout")
		.and()
		.exceptionHandling().accessDeniedPage("/403")
		.and().csrf().disable();
	}
}
