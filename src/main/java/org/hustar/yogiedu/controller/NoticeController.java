package org.hustar.yogiedu.controller;

import org.hibernate.annotations.Parameter;
import org.hustar.yogiedu.config.auth.LoginUser;
import org.hustar.yogiedu.config.auth.dto.SessionUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NoticeController {

	@GetMapping("/noticeList") // 경로 이름
	public String noticeList() {
		return "notice/noticeList"; // 페이지 파일 이름
	}

	@GetMapping("/notice")
	public String notice(@RequestParam("notIdx") Long notIdx, Model model, @LoginUser SessionUser user) {
		model.addAttribute("user", user);
		model.addAttribute("notIdx", notIdx);
		return "notice/noticeView";
	}

	@GetMapping("/noticeReg")
	public String noticeReg(Model model, @LoginUser SessionUser user) {
		model.addAttribute("user", user);
		return "notice/noticeReg";
	}

	@GetMapping("/noticeUpdate")
	public String noticeUpdate(@RequestParam("notIdx") Long notIdx, Model model, @LoginUser SessionUser user) {
		model.addAttribute("user", user);
		model.addAttribute("notIdx", notIdx);
		return "notice/noticeUpdate";
	}

}