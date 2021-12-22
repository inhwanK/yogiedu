package org.hustar.yogiedu.domain.user;

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
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long userIdx;
	
	// unique key
	private String userEmail;
	
	private String userName;
	private String userBirth;
	
	// 회원 구분. 학원 또는 수강생.
	private String userDiv;
	
	// 회원의 학교 구분
	private String userEdu;
	private int userGrade;
	
	@Enumerated(EnumType.STRING)
	private Role userRole;
	private Long acaIdx;
	
	@Builder
	public User(String userEmail, String userName, String userBirth, String userDiv, String userEdu,
			int userGrade, Role userRole, Long acaIdx) {
		super();
		this.userEmail = userEmail;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userDiv = userDiv;
		this.userEdu = userEdu;
		this.userGrade = userGrade;
		this.userRole = userRole;
		this.acaIdx = acaIdx;
	}

	
	
	public User update(String userName, String userBirth, String userDiv, String userEdu,int userGrade, Role userRole,Long acaIdx) {
		this.userName = userName;
		this.userBirth = userBirth;
		this.userDiv = userDiv;
		this.userEdu = userEdu;
		this.userGrade = userGrade;
		this.userRole = userRole;
		this.acaIdx = acaIdx;
		
		return this;
	}
	
	public String getRoleKey() {
		return this.userRole.getKey();
	}


	
	
}
