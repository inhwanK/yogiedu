package org.hustar.yogiedu.controller;

import org.hustar.yogiedu.dto.user.UserUpdateRequestDto;
import org.hustar.yogiedu.service.UserService;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api")
public class RestUserController {

	private final UserService userService;
	
//	회원 정보 수정 구현.
	@PutMapping("/user")
	public Long updateUser(Long userIdx, @RequestBody UserUpdateRequestDto requestDto) {
		return userService.update(userIdx, requestDto);
	}
	
}
