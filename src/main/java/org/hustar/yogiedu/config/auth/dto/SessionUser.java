package org.hustar.yogiedu.config.auth.dto;

import java.io.Serializable;

import org.hustar.yogiedu.domain.domain.user.User;

import lombok.Getter;

@Getter
public class SessionUser implements Serializable{
	
	private String name;
	private String email;
	private String picture;
	
	
	public SessionUser(User user) {
		super();
		this.name = user.getName();
		this.email = user.getEmail();
		this.picture = user.getPicture();
	}
	
	
}
