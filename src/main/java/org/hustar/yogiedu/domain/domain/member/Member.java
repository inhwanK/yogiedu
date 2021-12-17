package org.hustar.yogiedu.domain.domain.member;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@Entity
public class Member{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long memberIdx;
	
	private String memberId;
	private String memberPassword;
	private String memberName;
	private String memberBirth;
	private String memberEmail;
	
	
	@Builder
	public Member(String memberId, String memberPassword, String memberName, String memberBirth,
			String memberEmail) {
		super();
		this.memberIdx = memberIdx;
		this.memberId = memberId;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberBirth = memberBirth;
		this.memberEmail = memberEmail;
	}
	
	
	
}
