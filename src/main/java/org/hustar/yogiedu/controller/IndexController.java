package org.hustar.yogiedu.controller;

import javax.servlet.http.HttpSession;

import org.hustar.yogiedu.config.auth.LoginUser;
import org.hustar.yogiedu.config.auth.dto.SessionUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class IndexController {

// /oauth2/authorization/google 으로 요청하면 구글 아이디로 로그인.
//	/logout 으로 요청하면 시큐리티에서 알아서 로그아웃 해줌.
	
	@GetMapping("/")
	public String index(Model model, @LoginUser SessionUser user) {
		if (user != null) {
			model.addAttribute("user", user);
		}
		return "index";
	}

//	로그인 테스트 경로임 실제 경로는 바꿔야함.
	@GetMapping("/lo")
	public String login(Model model, @LoginUser SessionUser user) {
		if (user != null) {
			model.addAttribute("user", user);
		}

		return "login/login";
	}
}
