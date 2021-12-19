package org.hustar.yogiedu.controller;

import org.hustar.yogiedu.config.auth.LoginUser;
import org.hustar.yogiedu.config.auth.dto.SessionUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AcademyController {

	@GetMapping("/academySearch")
	public String academySearch() {
		return "academy/academySearch";
	}

	@GetMapping("/academyEnroll")
	public String academyEnroll() {
		return "academy/academyEnroll";
	}

	@GetMapping("/academy")
	public ModelAndView academy(Long acaIdx, @LoginUser SessionUser user) {
		ModelAndView mav = new ModelAndView("academy/academyView", "acaIdx", acaIdx);
		mav.addObject(user);
		return mav;
	}

}
