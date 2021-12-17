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
public class IndexController {
	
	private final HttpSession httpSession;
	
	@GetMapping("/lo")
	public String index(Model model) {
//		model.addAllAttributes(null);
		
		SessionUser user = (SessionUser) httpSession.getAttribute("user");
		
		if(user !=null) {
			model.addAttribute("userName",user.getName());
			System.out.println(user.getName());
		}
		System.out.println("되긴 되냐?");
		
		
		return "login/login";
	}
}
