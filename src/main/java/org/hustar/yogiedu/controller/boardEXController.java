package org.hustar.yogiedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class boardEXController {
	
	@GetMapping("/boardEX") // 경로 이름
	public String boardEX() {
		return "boardEX"; // 페이지 파일 이름
	}

}
