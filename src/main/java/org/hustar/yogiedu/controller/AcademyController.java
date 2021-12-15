package org.hustar.yogiedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
}
