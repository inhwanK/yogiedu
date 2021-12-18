package org.hustar.yogiedu.dto.user;

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
	private String role;

	@Builder
	public UserUpdateRequestDto(String userName, String userBirth, String userDiv, String userEdu, int userGrade,
			String role) {
		super();
		this.userName = userName;
		this.userBirth = userBirth;
		this.userDiv = userDiv;
		this.userEdu = userEdu;
		this.userGrade = userGrade;
		this.role = role;
	}
	
	
}
