package org.hustar.yogiedu.service;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.lecture.LectureRepository;
import org.hustar.yogiedu.dto.lecture.LectureSaveRequestDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class LectureService {

	private final LectureRepository lectureRepository;
	
	@Transactional
	public Long save(LectureSaveRequestDto requestDto) {
		
		return lectureRepository.save(requestDto.toEntity()).getLectureIdx();
	}
}
