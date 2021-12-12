package org.hustar.yogiedu.controller;

import java.util.List;

import org.hustar.yogiedu.domain.academy.Academy;
import org.hustar.yogiedu.dto.academy.AcademyResponseDto;
import org.hustar.yogiedu.dto.academy.AcademySaveRepositoryDto;
import org.hustar.yogiedu.service.AcademyService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor // 필드에 존재하는 final 변수들의 생성자 호출하여 의존주입함.
public class RestAcademyController {

	private final AcademyService academyService;

	@GetMapping("/academyList")
	public List<AcademyResponseDto> getAcademyList() {
		return academyService.findAll();
	}	
	
//	@PostMapping("/academy")
//	public Long saveAcademy(@RequestBody AcademySaveRepositoryDto requestDto) {
//		return academyService.save(requestDto);
//	}
	
	@PostMapping("/academy")
	public Long saveAcademy(@RequestBody Academy academy) {
		return academyService.save(academy);
	}
	
}
