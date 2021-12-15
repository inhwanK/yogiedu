package org.hustar.yogiedu.config.login;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@Getter
//@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name ="member")
public class MemberEntity {
//    @Id
//    @GeneratedValue(strategy= GenerationType.IDENTITY)
//    private int member_idx;
//    
//    @Column(length = 64, nullable = false)
//    private String member_id;   
//
//    @Column(length = 255, nullable = false)
//    private String member_password;    
//    
//    @Column(length = 6, nullable = false)
//    private String member_name;    
//    
//    @Column(length = 6, nullable = false)
//    private String member_birth;    
//
//    @Column(length = 64, nullable = false)
//    private String member_email;
//
//    @Builder
//    public MemberEntity(int member_idx, String member_id, String member_password, String member_name, String member_birth, String member_email) {
//        this.member_idx = member_idx;
//        this.member_id = member_id;
//        this.member_password = member_password;
//        this.member_name = member_name;
//        this.member_birth = member_birth;
//        this.member_email = member_email;
//    }
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int memberIdx;
	
	@Column(length = 64, nullable = false)
	private String memberId;
	
	@Column(length = 255, nullable = false)
	private String memberPassword;
	
	@Column(length = 6, nullable = false)
	private String memberName;
	
	@Column(length = 6, nullable = false)
	private String memberBirth;
	
	@Column(length = 64, nullable = false)
	private String memberEmail;
	
	@Builder
	public MemberEntity(int memberIdx, String memberId, String memberPassword, String memberName, String memberBirth,
			String memberEmail) {
//		super();
		this.memberIdx = memberIdx;
		this.memberId = memberId;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberBirth = memberBirth;
		this.memberEmail = memberEmail;
	}
	
	
}
