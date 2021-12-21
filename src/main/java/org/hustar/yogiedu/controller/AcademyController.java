package org.hustar.yogiedu.controller;

import org.hustar.yogiedu.config.auth.LoginUser;
import org.hustar.yogiedu.config.auth.dto.SessionUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AcademyController {

	@GetMapping("/academySearch")
	public String academySearch(Model model, @LoginUser SessionUser user) {
		model.addAttribute("user", user);
		return "academy/academySearch";
	}

	@GetMapping("/academyEnroll")
	public String academyEnroll(Model model, @LoginUser SessionUser user) {
		model.addAttribute("user", user);
		return "academy/academyEnroll";
	}

	@GetMapping("/academy")
	public String academy(Long acaIdx, Model model, @LoginUser SessionUser user) {
		model.addAttribute("user", user);
		model.addAttribute("acaIdx", acaIdx);
		return "academy/academyView";
	}

}
