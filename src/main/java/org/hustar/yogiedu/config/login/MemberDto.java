package org.hustar.yogiedu.config.login;

import java.time.LocalDateTime;

import javax.management.relation.Role;
import javax.persistence.GenerationType;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//@Getter
//@Setter
//@ToString
//@NoArgsConstructor

@Setter
@Getter
@ToString
@NoArgsConstructor
public class MemberDto {
	
//    private int member_idx;
//    private String member_id;
//    private String member_password;
//    private String member_name;
//    private String member_birth;
//    private String member_email;
//    
//    @Builder
//    public MemberDto(int member_idx, String member_id, String member_password, String member_name, String member_birth, String member_email) {
//        this.member_idx = member_idx;
//        this.member_id = member_id;
//        this.member_password = member_password;
//        this.member_name = member_name;
//        this.member_birth = member_birth;
//        this.member_email = member_email;
//    }

//    public MemberEntity toEntity(){
//        return MemberEntity.builder()
//                .member_idx(member_idx)
//                .member_id(member_id)
//                .member_password(member_password)
//                .member_name(member_name)
//                .member_birth(member_birth)
//                .member_email(member_email)
//                .build();
//    }

	private int memberIdx;
	private String memberId;
	private String memberPassword;
	private String memberName;
	private String memberBirth;
	private String memberEmail;
	
//	public void setMemberPassEncoding(String encodedPass) {
//		this.memberPassword = encodedPass;
//	}
	
	@Builder
	public MemberDto(int memberIdx, String memberId, String memberPassword, String memberName, String memberBirth, String memberEmail) {
//		super();
		this.memberIdx = memberIdx;
		this.memberId = memberId;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberBirth = memberBirth;
		this.memberEmail = memberEmail;
	}

	
    public MemberEntity toEntity() {
    	return MemberEntity.builder()
    			.memberIdx(memberIdx)
    			.memberId(memberId)
    			.memberPassword(memberPassword)
    			.memberName(memberName)
    			.memberBirth(memberBirth)
    			.memberEmail(memberEmail)
    			.build();
    }



    
}