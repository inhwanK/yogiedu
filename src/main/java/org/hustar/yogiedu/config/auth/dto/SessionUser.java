package org.hustar.yogiedu.config.auth.dto;

import java.io.Serializable;

import org.hustar.yogiedu.domain.user.Role;
import org.hustar.yogiedu.domain.user.User;

import lombok.Getter;

@Getter
public class SessionUser implements Serializable {

	private String userEmail;
	private String userName;

	private String userBirth;
	private String userDiv;
	private String userEdu;
	private int userGrade;
	private Role userRole;
	private Long acaIdx;
	
	public SessionUser(User user) {
		this.userEmail = user.getUserEmail();
		this.userName = user.getUserName();
		this.userBirth = user.getUserDiv();
		this.userDiv = user.getUserDiv();
		this.userEdu = user.getUserEdu();
		this.userGrade = user.getUserGrade();
		this.userRole = user.getUserRole();
		this.acaIdx = user.getAcaIdx();
	}

}
