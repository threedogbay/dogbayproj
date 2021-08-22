package com.three.dog.auth;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.three.dog.domain.MemberVO;

import lombok.AllArgsConstructor;


//@EnableWebSecurity // Spring Security를 활성화한다는 의미의 어노테이션
@Configuration // spring security 환경설정 클래스 라는 의미의 어노테이션
public class SecurityConfig extends WebSecurityConfigurerAdapter { //WebSecurityConfigurerAdapter는 Spring Security의 설정파일로서의 역할을 하기 위해 상속해야 하는 클래스
	
	@Autowired 
	private UserDetailsService userDetailsService;
	
	@Override
	public void configure(WebSecurity web) { //  WebSecurityConfigurerAdapter를 상속받으면 오버라이드 가능
											 //인증을 무시할 경로들을 설정
		web.ignoring().antMatchers("/assets/**");	//static 하위 폴더 (css, js, img)는 무조건 접근이 가능해야하기 때문에 인증을 무시	
	}
	    
    @Override
    protected void configure(HttpSecurity http) throws Exception { // WebSecurityConfigurerAdapter를 상속받으면 오버라이드 가능
	    http.authorizeRequests() // 접근에 대한 인증 설정이 가능합니다.
	    		// 페이지 권한 설정// permitAll() 누구나 접근 허용
	            .antMatchers("/user/**").permitAll()//인증되지 않은, 로그인이 되지 않은 사용자만 접근 가능
	            .antMatchers("/afterauth/**").hasRole("USER")
				.anyRequest().authenticated()                // 나머지 요청들은 권한의 종류에 상관 없이 권한이 있어야 접근 가능 authenticated() : 권한이 있으면 무조건 접근 가능
												             // hasRole(user or admin) : 특정 권한이 있는 사람만 접근 가능
			.and() // 로그인 설정
	          .formLogin()// 로그인에 관한 설정을 의미 로그인 성공시 '/'로 리다이렉트
	          .loginPage("/user/login")
	          .loginProcessingUrl("/login")
	          .defaultSuccessUrl("/index")
	          
	          .permitAll()
	        .and() //로그 아웃 설정
	        .logout()
	          .logoutRequestMatcher(new AntPathRequestMatcher("/views/logout"))
	          .logoutSuccessUrl("/logout")
	          .invalidateHttpSession(true)
	        .and()
	           //403 예외처리 핸들링
	           .exceptionHandling().accessDeniedPage("/user/denied") //에러가 뜰 경우 로그인 페이지로 넘어감
	        .and()
	    	   .csrf().disable(); //로그인 창, 웹 사이트의 취약점을 이용한 의도치 않은 요청을 통한 공격을 의미한다. 이 기능을 disable한 상태이다.
		  }

//	@Override
//	protected UserDetailsService userDetailsService() {
//		// TODO Auto-generated method stub
//		return super.userDetailsService();
//	}
//	
//	@Override
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth.userDetailsService(userDetailsService).passwordEncoder(new BCryptPasswordEncoder());
//	}
//	
//	@Bean
//	public BCryptPasswordEncoder bCryptPasswordEncoder() {
//		
//		return new BCryptPasswordEncoder();
//	}
    @Bean
	public PasswordEncoder passwordEncoder() {
		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}
	
    /*
    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService().passwordEncoder(new BCryptPasswordEncoder());
	}
	*/
    //Authentication 로그인(ex> 접속 아이디가 맞는지 "인증")
    //Authorization 권한 (ex> 해당 게시물 및 페이지에 접근할 수 있는 "권한")
    
    
}
