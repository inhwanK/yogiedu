package org.hustar.yogiedu.controller;

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

	@GetMapping("/academyManager")
	public ModelAndView academyManager(Long acaIdx) {
		ModelAndView mav = new ModelAndView("academy/academyManager", "acaIdx", acaIdx);
		return mav;
	}
	
	@GetMapping("/academyUser")
	public ModelAndView academyUser(Long userIdx) {
		ModelAndView mav = new ModelAndView("academy/academyManager", "userIdx", userIdx);
		return mav;
	}

}
