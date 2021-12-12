package org.hustar.yogiedu.controller;

import org.hustar.yogiedu.dto.academy.AcademySaveRepositoryDto;
import org.hustar.yogiedu.service.AcademyService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class RestAcademyController {
	
	private AcademyService academyService;
	
	@PostMapping("/academy")
	public Long saveAcademy(@RequestBody AcademySaveRepositoryDto requestDto) {
		return academyService.save(requestDto);
	}
}
