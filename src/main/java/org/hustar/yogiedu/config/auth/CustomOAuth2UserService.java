package org.hustar.yogiedu.config.auth;

import javax.servlet.http.HttpSession;

import org.hustar.yogiedu.config.auth.dto.OAuthAttributes;
import org.hustar.yogiedu.config.auth.dto.SessionMember;
import org.hustar.yogiedu.domain.domain.member.Member;
import org.hustar.yogiedu.domain.domain.member.MemberRepository;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserService;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class CustomOAuth2UserService implements OAuth2UserService<OAuth2UserRequest, OAuth2User> {

	private final MemberRepository memberRepository;
	private final HttpSession httpSession;

	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {

		OAuth2UserService<OAuth2UserRequest, OAuth2User> delegate = new DefaultOAuth2UserService();
		OAuth2User oAuth2User = delegate.loadUser(userRequest);

		String registrationId = userRequest.getClientRegistration().getRegistrationId();
		System.out.println("서비스 구분 : " + registrationId);
		
		String userNameAttributeName = userRequest.getClientRegistration().getProviderDetails().getUserInfoEndpoint()
				.getUserNameAttributeName();
		System.out.println("서비스 키 : " + userNameAttributeName);

		OAuthAttributes attributes = OAuthAttributes.of(registrationId, userNameAttributeName,
				oAuth2User.getAttributes());

		Member member = saveOrUpdate(attributes);
		httpSession.setAttribute("user", new SessionMember(member));

		return null;
	}

	private Member saveOrUpdate(OAuthAttributes attributes) {
		Member member = memberRepository.findByEmail(attributes.getEmail())
				.map(entity -> entity.update(attributes.getName(), attributes.getPicture()))
				.orElse(attributes.toEntity());

		return memberRepository.save(member);
	}
}
