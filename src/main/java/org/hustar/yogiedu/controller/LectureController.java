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
	public ModelAndView getacademyLectureView(@PathVariable Long acaIdx) {
		ModelAndView mav = new ModelAndView("academy/academyLectureView", "acaIdx", acaIdx);
		return mav;
	}
	
	
	@GetMapping("/lectureView/{lectureIdx}") // 경로 이름
	public ModelAndView getlectureView(@PathVariable Long lectureIdx) {
		ModelAndView mav = new ModelAndView("academy/lectureView", "lectureIdx", lectureIdx);
		return mav;
	}
	
	@GetMapping("/lectureDetailView") // 경로 이름
	public ModelAndView getlectureDetailView(Long acaIdx) {
		ModelAndView mav = new ModelAndView("lecture/lectureDetailView", "acaIdx", acaIdx);
		return mav;

}
}
