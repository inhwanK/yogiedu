package org.hustar.yogiedu.controller;

import org.hustar.yogiedu.dto.lecture.LectureSaveRequestDto;
import org.hustar.yogiedu.service.LectureService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api")
public class RestLectureController {

	private final LectureService lectureService;
	
	@PostMapping("/lecture")
	public Long regLecture(@RequestBody LectureSaveRequestDto requestDto) {
		return lectureService.save(requestDto);
	}
}
