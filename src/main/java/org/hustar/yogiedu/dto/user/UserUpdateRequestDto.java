package org.hustar.yogiedu.dto.user;

import org.hustar.yogiedu.domain.user.Role;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class UserUpdateRequestDto {
	private String userName;
	private String userBirth;
	private String userDiv;
	private String userEdu;
	private int userGrade;
	
//	롤은 다시한번 생각해볼까?
	private Role userRole;

	@Builder
	public UserUpdateRequestDto(String userName, String userBirth, String userDiv, String userEdu, int userGrade,
			Role userRole) {
		super();
		this.userName = userName;
		this.userBirth = userBirth;
		this.userDiv = userDiv;
		this.userEdu = userEdu;
		this.userGrade = userGrade;
		this.userRole = userRole;
	}
	
	
}
