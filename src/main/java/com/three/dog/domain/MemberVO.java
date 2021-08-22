package com.three.dog.domain;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

public class MemberVO implements UserDetails{

	
	private String member_id;
	private String member_pw;
	private String member_name;
	private String auth;
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pwd) {
		this.member_pw = member_pwd;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority(auth));
		return authorities;
	}
	@Override
	public String getPassword() {
		return member_pw;
	}
	@Override
	public String getUsername() {
		return member_id;
	}
	@Override
	public boolean isAccountNonExpired() { //계정 만료 여부 반환
		return true; //true -> 만료되지 않았음.
	}
	@Override
	public boolean isAccountNonLocked() {//
		return true; // true -> 잠금되지 않았음.
	}
	@Override
	public boolean isCredentialsNonExpired() {//패스워드가 만료되었는지 확인하는 로직
		return true; // true -> 만료되지 않았음.
	}
	@Override
	public boolean isEnabled() { //계정 사용 가능 여부 반환
		return true; // true -> 사용가능
	}
}
