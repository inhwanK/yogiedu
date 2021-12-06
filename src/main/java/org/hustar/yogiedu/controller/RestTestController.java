package org.hustar.yogiedu.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class RestTestController {
	
	@GetMapping("/index")
	public String index() {
		return "api test success!";
	}
}
