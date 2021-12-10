package org.hustar.yogiedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class listacademyController {
	

	@GetMapping("/listacademy") // 경로 이름
	public String listacademy() {
		return "listacademy"; // 페이지 파일 이름
	}

	
}
