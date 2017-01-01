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
		.usersByUsernameQuery("select userName, password, enabled from User where userName= ? ")
		.authoritiesByUsernameQuery("select u.userName , r.roleName from User u ,Role r, UserRole ur where u.userId=ur.userId and r.roleId=ur.roleId and userName =?");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception
	{
		http.authorizeRequests()
		.antMatchers("/Category","/Product","/SubCategory","/Supplier","/Brand").access("hasRole('ROLE_ADMIN')")
		.anyRequest().permitAll()
		.and()
		.formLogin().loginPage("/userLogin").failureUrl("/userLogin?error")
		.usernameParameter("username").passwordParameter("password").loginProcessingUrl("/perform_login").defaultSuccessUrl("/")
//		.and()
//		.logout().logoutSuccessUrl("/perform_logout")
		.and()
		.exceptionHandling().accessDeniedPage("/accessDeniedPage")
		.and().csrf().disable();
	}
}
