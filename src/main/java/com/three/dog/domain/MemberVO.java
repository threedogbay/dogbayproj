package com.three.dog.domain;

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

	
	private String memberid;
	private String memberpw;
	private String email;
	private String auth;
	
	
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getMemberpw() {
		return memberpw;
	}
	public void setMemberpw(String memberpw) {
		this.memberpw = memberpw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	
	public MemberVO(String memberid, String memberpw, String email, String auth) {
		this.memberid = memberid;
		this.memberpw = memberpw;
		this.email = email;
		this.auth = auth;
	}
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Set<GrantedAuthority> roles = new HashSet<>();
		for(String role : auth.split(",")) {
			roles.add(new SimpleGrantedAuthority(role));
		}
		return roles;
	}
	@Override
	public String getPassword() {
		return memberpw;
	}
	@Override
	public String getUsername() {
		return memberid;
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
