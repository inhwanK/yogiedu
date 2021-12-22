package org.hustar.yogiedu.controller;

import org.hustar.yogiedu.config.auth.LoginUser;
import org.hustar.yogiedu.config.auth.dto.SessionUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LectureController {

	@GetMapping("/academyLectureEnroll/{acaIdx}") // 경로 이름
	public String getLectureEnroll(@PathVariable Long acaIdx, Model model, @LoginUser SessionUser user) {
		model.addAttribute("user", user);
		model.addAttribute("acaIdx", acaIdx);
		return "academy/academyLectureEnroll";
	}

	@GetMapping("/academyLectureView/{acaIdx}") // 경로 이름
	public String getacademyLectureView(@PathVariable Long acaIdx, Model model, @LoginUser SessionUser user) {
		model.addAttribute("user", user);
		model.addAttribute("acaIdx", acaIdx);
		return "lecture/lectureLectureView";
	}

	// 유저측에서 학원 상세보기임
	@GetMapping("/lectureAcademyDetailView/{acaIdx}") // 경로 이름
	public String getlectureView(@PathVariable Long acaIdx, Model model, @LoginUser SessionUser user) {
		model.addAttribute("user", user);
		model.addAttribute("acaIdx", acaIdx);
		return "lecture/lectureAcademyDetailView";
	}

	@GetMapping("/academyLectureTable/{lectureIdx}") // 경로 이름
	public String lectureTableView(@PathVariable Long lectureIdx, Model model, @LoginUser SessionUser user) {
		model.addAttribute("user", user);
		model.addAttribute("lectureIdx", lectureIdx);
		return "academy/academyLectureTable";
	}

}
