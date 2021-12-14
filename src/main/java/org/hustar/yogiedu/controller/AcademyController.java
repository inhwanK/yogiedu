package org.hustar.yogiedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AcademyController {
	
	@GetMapping("/academySearch")
	public String academySearch() {
		return "academy/academySearch";
	}
}
