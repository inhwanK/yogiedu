package org.hustar.yogiedu.controller;

import javax.servlet.http.HttpSession;

import org.hustar.yogiedu.config.auth.dto.SessionUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class LoginController {

	private final HttpSession httpSession;

// /oauth2/authorization/google 으로 요청하면 구글 아이디로 로그인.

//	/logout 으로 요청하면 시큐리티에서 알아서 로그아웃 해줌.

//	로그인 테스트 경로임 실제 경로는 바꿔야함.
	@GetMapping("/lo")
	public String index(Model model) {
//		model.addAllAttributes(null);

		SessionUser user = (SessionUser) httpSession.getAttribute("user");

		if (user != null) {
			model.addAttribute("userName", user.getUserName());
			System.out.println(user.getUserName());
		}
		System.out.println("되긴 되냐?");

		return "login/login";
	}
}
