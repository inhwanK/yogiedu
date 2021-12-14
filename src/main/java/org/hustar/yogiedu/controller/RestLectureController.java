package org.hustar.yogiedu.controller;

import org.hustar.yogiedu.dto.lecture.LectureSaveRequestDto;
import org.hustar.yogiedu.service.AcademyService;
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
	private final AcademyService academyService;
	
	
	@PostMapping("/lecture")
	public Long regLecture(Long acaIdx, @RequestBody LectureSaveRequestDto requestDto) {

//		academyService.
		requestDto.builder()
		.academy(null)
		.build();
		
		return lectureService.save(requestDto);
	}
}
