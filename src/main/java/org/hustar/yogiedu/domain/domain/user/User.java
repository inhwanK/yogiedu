package org.hustar.yogiedu.domain.domain.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;


// http://localhost:8080/login/oauth2/code/google
@Getter
@NoArgsConstructor
@Entity
@Table(name ="user")
public class User {

	@Id
	@Column(name = "")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long userIdx;
	
	private String userEmail;
	private String userName;
	private String userBirth;
	private String userDiv;
	private String userEdu;
	private int userGrade;	
	
	@Enumerated(EnumType.STRING)
	private Role userRole;

	@Builder
	public User(Long userIdx, String userEmail, String userName, String userBirth, String userDiv, String userEdu,
			int userGrade, Role userRole) {
		super();
		this.userIdx = userIdx;
		this.userEmail = userEmail;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userDiv = userDiv;
		this.userEdu = userEdu;
		this.userGrade = userGrade;
		this.userRole = userRole;
	}

	
	
	public User update(String userEmail, String userName, String userBirth, String userDiv, String userEdu,int userGrade) {
		this.userEmail = userEmail;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userDiv = userDiv;
		this.userEdu = userEdu;
		this.userGrade = userGrade;
		
		return this;
	}
	
	public String getRoleKey() {
		return this.userRole.getKey();
	}


	
	
}
