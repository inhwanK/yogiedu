package org.hustar.yogiedu.config.auth.dto;

import java.util.Map;

import org.hustar.yogiedu.domain.user.Role;
import org.hustar.yogiedu.domain.user.User;

import lombok.Builder;
import lombok.Getter;

@Getter
public class OAuthAttributes {

//	sub=113742007707806777511, name=김인환, given_name=인환, family_name=김, 
//	picture=https://lh3.googleusercontent.com/a/AATXAJxs4AYTHD_3nbpapY3aOB-bKJYIFhaJO601hnGy=s96-c, 
//	email=inhan1009@naver.com, email_verified=true, locale=ko

	private Map<String, Object> attributes;
	private String nameAttributeKey;

	private String userEmail;
	private String userName;

//	구글에서 제공하지 않는 데이터;
	private String userBirth;

	private String userDiv;
	private String userEdu;
	private int userGrade;

//	private Role userRole;

	@Builder
	public OAuthAttributes(Map<String, Object> attributes, String nameAttributeKey, String userEmail, String userName) {
		this.attributes = attributes;
		this.nameAttributeKey = nameAttributeKey;
		this.userEmail = userEmail;
		this.userName = userName;
	}

	public static OAuthAttributes of(String registrationId, String userNameAttributeName,
			Map<String, Object> attributes) {
		return ofGoogle(userNameAttributeName, attributes);
	}

	public static OAuthAttributes ofGoogle(String userNameAttributeName, Map<String, Object> attributes) {
		return OAuthAttributes.builder().userEmail((String) attributes.get("email"))
				.userName((String) attributes.get("name")).attributes(attributes)
				.nameAttributeKey(userNameAttributeName).build();
	}


	public User toEntity() {
		return User.builder()
				.userEmail(userEmail)
				.userName(userName)
				.userRole(Role.GUEST)
				.build();
	}

}
