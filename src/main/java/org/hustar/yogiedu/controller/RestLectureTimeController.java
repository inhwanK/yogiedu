package org.hustar.yogiedu.controller;

import java.util.List;

import org.hustar.yogiedu.dto.lecturetime.LectureTimeResponseDto;
import org.hustar.yogiedu.dto.lecturetime.LectureTimeSaveRequestDto;
import org.hustar.yogiedu.service.LectureTimeService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api")
public class RestLectureTimeController {
	
	private final LectureTimeService ltService;
	
	@GetMapping("/lectureTimeList")
	public List<LectureTimeResponseDto> getLtList() {
		return ltService.findAll();
	}
	
	@PostMapping("/lectureTime")
	public Long regLectureTime(@RequestBody LectureTimeSaveRequestDto requestDto) {
		return ltService.save(requestDto); 
	}
}
