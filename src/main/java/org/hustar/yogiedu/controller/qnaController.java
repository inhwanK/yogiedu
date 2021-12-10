package org.hustar.yogiedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class qnaController {
	
	@GetMapping("/qna") // 경로 이름
	public String qna() {
		return "qna"; // 페이지 파일 이름
	}
	
}
