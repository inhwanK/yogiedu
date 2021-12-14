package org.hustar.yogiedu.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.lecture.Lecture;
import org.hustar.yogiedu.domain.lecture.LectureRepository;
import org.hustar.yogiedu.dto.lecture.LectureResponseDto;
import org.hustar.yogiedu.dto.lecture.LectureSaveRequestDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

//update 구현 안됨.
@RequiredArgsConstructor
@Service
public class LectureService {

	private final LectureRepository lectureRepository;

	@Transactional
	public Long save(LectureSaveRequestDto requestDto) {

		return lectureRepository.save(requestDto.toEntity()).getLectureIdx();
	}

	@Transactional
	public List<LectureResponseDto> findAll() {

		List<Lecture> entityList = lectureRepository.findAll();
		List<LectureResponseDto> lectureList = new ArrayList<LectureResponseDto>();

		for (int i = 0; i < entityList.size(); i++) {
			lectureList.add(new LectureResponseDto(entityList.get(i)));
		}
		return lectureList;
	}

	@Transactional
	public LectureResponseDto findById(Long lectureIdx) {
		Lecture lecture = lectureRepository.findById(lectureIdx)
				.orElseThrow(() -> new IllegalArgumentException("해당 강의가 없습니다. id="+lectureIdx));
		return new LectureResponseDto(lecture);
	}
	
	@Transactional
	public Long deleteById(Long lectureIdx) {
		lectureRepository.deleteById(lectureIdx);
		return lectureIdx;
	}
}
