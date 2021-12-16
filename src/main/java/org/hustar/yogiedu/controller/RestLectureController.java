package org.hustar.yogiedu.controller;

import java.util.List;

import org.hustar.yogiedu.dto.lecture.LectureResponseDto;
import org.hustar.yogiedu.dto.lecture.LectureSaveRequestDto;
import org.hustar.yogiedu.service.LectureService;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api")
public class RestLectureController {

	private final LectureService lectureService;
//	private final AcademyService academyService;
	

	@GetMapping("/lecture")
	public LectureResponseDto getLectureByIdx(@RequestParam("lectureIdx") Long lectureIdx) {
		return lectureService.findById(lectureIdx);
	}
	

	@GetMapping("/lecture/academy")
	public List<LectureResponseDto> getLectureByAcaIdx(@RequestParam("acaIdx") Long acaIdx) {
		return lectureService.findByAcaIdx(acaIdx);
	}
	
	@GetMapping("/lectureList")
	public List<LectureResponseDto> getLectureList(){
		return lectureService.findAll();
	}
	
//	강의를 등록하기 전에 학원을 선택했기에 학원 인덱스 값을 가지고 있는 상태에서 강의를 등록하게 됨.
//	파라미터가 아닌 경로로 해주는게 좋음.
	@PostMapping("/lecture") // 일단 되긴함.
	public Long regLecture(@RequestBody LectureSaveRequestDto requestDto) {

//		참조하는 기본키만 넣어주면 데이터 넣는데에는 문제가 없음.
//		따라서 Academy 조회 하지말고 Idx넣어주면 됨.
		
		return lectureService.save(requestDto);
	}

	@DeleteMapping("/lecture")
	public Long deleteLecture(@RequestParam("lectureIdx") Long lectureIdx) {
		return lectureService.deleteById(lectureIdx);
	}
}
