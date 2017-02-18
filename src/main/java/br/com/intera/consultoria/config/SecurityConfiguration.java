package br.com.intera.consultoria.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import br.com.intera.consultoria.dao.UsuarioDAO;

@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private UsuarioDAO usuarioDAO;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/").hasAnyRole("ADMIN")
		.antMatchers("/resources/**").permitAll()
		.anyRequest().authenticated()
		.and().formLogin().loginPage("/login").permitAll()
		.and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
//		http.authorizeRequests().antMatchers("/products/form").hasAnyRole("ADMIN")
//								.antMatchers("/shoppingCart/**").permitAll()
//								.antMatchers("/checkout/**").permitAll()
//								.antMatchers(HttpMethod.POST , "/products").hasRole("ADMIN")
//								.antMatchers(HttpMethod.GET , "/products").hasRole("ADMIN")
//								.antMatchers("/products/**").permitAll()
//								.antMatchers("/resources/**").permitAll()
//								.antMatchers("/").permitAll()
//								.anyRequest().authenticated()
//								.and().formLogin().loginPage("/login").permitAll()
//								.and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(usuarioDAO).passwordEncoder(new BCryptPasswordEncoder());
	}
}
