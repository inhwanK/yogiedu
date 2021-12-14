package org.hustar.yogiedu.controller;

import java.util.Optional;

import org.hustar.yogiedu.domain.academy.Academy;
import org.hustar.yogiedu.domain.lecture.Lecture;
import org.hustar.yogiedu.dto.academy.AcademyResponseDto;
import org.hustar.yogiedu.dto.lecture.LectureSaveRequestDto;
import org.hustar.yogiedu.service.AcademyService;
import org.hustar.yogiedu.service.LectureService;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	@GetMapping("/lecture")
	public Long getLecture(Long lectureIdx) {
		return null;
	}
	
	@PostMapping("/lecture") // 일단 되긴함.
	public Long regLecture(Long acaIdx, @RequestBody LectureSaveRequestDto requestDto) {

		AcademyResponseDto responseAcademy = academyService.findById(acaIdx);
		
//		이게 맞을까...?
		Academy academy;
		
		academy = Academy.builder()
		.acaIdx(acaIdx)
		.acaAsnum(responseAcademy.getAcaAsnum())
		.acaNm(responseAcademy.getAcaNm())
		.atptOfcdcScCode(responseAcademy.getAtptOfcdcScCode())
		.atptOfcdcScNm(responseAcademy.getAtptOfcdcScNm())
		.adminDistName(responseAcademy.getAdminDistName())
		.estblDate(responseAcademy.getEstblDate())
		.regDate(responseAcademy.getRegDate())
		.fieldName(responseAcademy.getFieldName())
		.liOfdName(responseAcademy.getLiOfdName())
		.leCrseListName(responseAcademy.getLeCrseListName())
		.leCrseName(responseAcademy.getLeCrseName())
		.faRdnzc(responseAcademy.getFaRdnzc())
		.faRdnma(responseAcademy.getFaRdnma())
		.faRdnda(responseAcademy.getFaRdnda())
		.build();	
		
		Lecture lecture;
		
		LectureSaveRequestDto lectureRequestDto;
		
		lectureRequestDto = LectureSaveRequestDto.builder()
		.academy(academy)
		.lectureName(requestDto.getLectureName())
		.teacherName(requestDto.getTeacherName())
		.build();
		
		return lectureService.save(lectureRequestDto);
	}
	
	
}
