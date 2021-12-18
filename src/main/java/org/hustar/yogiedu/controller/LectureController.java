package org.hustar.yogiedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LectureController {

	@GetMapping("/academyLectureEnroll/{acaIdx}") // 경로 이름
	public ModelAndView getLectureEnroll(@PathVariable Long acaIdx) {
		ModelAndView mav = new ModelAndView("academy/academyLectureEnroll", "acaIdx", acaIdx);
		return mav;
	}

	@GetMapping("/academyLectureView/{acaIdx}") // 경로 이름
	public ModelAndView getLectureView(@PathVariable Long acaIdx) {
		ModelAndView mav = new ModelAndView("academy/academyLectureView", "acaIdx", acaIdx);
		return mav;
	}
}
