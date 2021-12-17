package org.hustar.yogiedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LectureController {
	
	
	
	
	@GetMapping("/lectureEnroll") // 경로 이름
	public String lectureEnroll() {
		return "lecture/lectureEnroll"; // 페이지 파일 이름
	}
	
	@GetMapping("/lectureView/{acaIdx}") // 경로 이름
	public ModelAndView getLectureView(@PathVariable Long acaIdx) {
		ModelAndView mav = new ModelAndView("lecture/lectureView", "acaIdx", acaIdx);
		return mav;
	}
}
