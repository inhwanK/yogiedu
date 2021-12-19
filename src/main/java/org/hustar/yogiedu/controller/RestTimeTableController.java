package org.hustar.yogiedu.controller;

import java.util.List;

import org.hustar.yogiedu.dto.timetable.TimeTableSaveRequestDto;
import org.hustar.yogiedu.service.TimeTableService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api")
public class RestTimeTableController {

	private final TimeTableService timeTableService;
	
	@PostMapping("/timetable")
	public List<Long> regTimeTable(@RequestBody TimeTableSaveRequestDto requestDto){
		return timeTableService.save(requestDto);
	}
}
