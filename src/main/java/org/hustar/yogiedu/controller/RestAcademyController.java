package org.hustar.yogiedu.controller;

import java.util.ArrayList;
import java.util.List;

import org.hustar.yogiedu.dto.academy.AcademySaveRequestDto;
import org.hustar.yogiedu.service.AcademyService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api")
public class RestAcademyController {

	private final AcademyService academyService;
	
	@PostMapping("/academy")
	public Long regAcademy(@RequestBody AcademySaveRequestDto requestDto) {
		return academyService.save(requestDto);
	}
	
	@PostMapping("/academyList")
	public List<Long> regAcademyList(@RequestBody List<AcademySaveRequestDto> requestDtos){
		
		AcademySaveRequestDto requestDto;
		List<Long> acaIdxList = new ArrayList<Long>();
		
		for(int i = 0; i < requestDtos.size(); i++) {
			requestDto = requestDtos.get(i);
			acaIdxList.add(academyService.save(requestDto));
		}
		
		
		return acaIdxList;
	}
}
