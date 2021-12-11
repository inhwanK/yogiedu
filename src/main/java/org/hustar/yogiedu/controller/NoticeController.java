package org.hustar.yogiedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {
	
	@GetMapping("/notice") // 경로 이름
	public String notice() {
		return "notice/notice"; // 페이지 파일 이름
	}
	

}
