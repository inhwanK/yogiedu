package org.hustar.yogiedu.service;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.user.User;
import org.hustar.yogiedu.domain.user.UserRepository;
import org.hustar.yogiedu.dto.user.UserUpdateRequestDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserService {

	private final UserRepository userRepository;
	
	@Transactional
	public Long update(Long userIdx, UserUpdateRequestDto requestDto) {
		User user = userRepository.findById(userIdx)
				.orElseThrow(() -> new IllegalArgumentException("회원 정보를 불러올 수 없습니다."));
		
		user.update(requestDto.getUserName(), requestDto.getUserBirth(), requestDto.getUserDiv(),
				requestDto.getUserEdu(), requestDto.getUserGrade(), requestDto.getUserRole(),requestDto.getAcaIdx());
		return userIdx;
	}
}
