package org.hustar.yogiedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoticeController {
	
	@GetMapping("/noticeList") // 경로 이름
	public String noticeList() {
		return "notice/noticeList"; // 페이지 파일 이름
	}
	
	
	
	@GetMapping("/notice")
	public ModelAndView notice(Long notIdx) {
		ModelAndView mav = new ModelAndView("notice/noticeView", "notIdx", notIdx);
		return mav;
	}
	
	@GetMapping("/noticeReg")
	public String noticeReg() {
		return "notice/noticeReg";
	}
	@GetMapping("/noticeUpdate")
	public ModelAndView noticeUpdate(Long notIdx) {
		ModelAndView mav = new ModelAndView("notice/noticeUpdate", "notIdx", notIdx);
		return mav;
	}

}