package org.hustar.yogiedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public ModelAndView academy(Long acaIdx) {
	ModelAndView mav = new ModelAndView("academy/academyView", "acaIdx", acaIdx);
			return mav;
	}
	
}
