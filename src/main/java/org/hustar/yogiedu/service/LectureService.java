package org.hustar.yogiedu.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.lecture.Lecture;
import org.hustar.yogiedu.domain.lecture.LectureRepository;
import org.hustar.yogiedu.domain.lecturetime.LectureTime;
import org.hustar.yogiedu.domain.lecturetime.LectureTimeRepository;
import org.hustar.yogiedu.dto.lecture.LectureResponseDto;
import org.hustar.yogiedu.dto.lecture.LectureSaveRequestDto;
import org.hustar.yogiedu.dto.lecturetime.LectureTimeResponseDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

//update 구현 안됨.
@RequiredArgsConstructor
@Service
public class LectureService {

	private final LectureRepository lectureRepository;
	private final LectureTimeRepository ltRepository;
	
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
		Lecture entity = lectureRepository.findById(lectureIdx)
				.orElseThrow(() -> new IllegalArgumentException("해당 강의가 없습니다. id=" + lectureIdx));

		List<LectureTime> ltEntityList = ltRepository.findByLecture(entity);
		List<LectureTimeResponseDto> ltResponseList = new ArrayList<LectureTimeResponseDto>();

		for (int i = 0; i < ltEntityList.size(); i++) {
			ltResponseList.add(new LectureTimeResponseDto(ltEntityList.get(i)));
			System.out.println("내가 원하는 것 > "+ltResponseList.get(i).getLectureWeek());
		}

		return new LectureResponseDto(entity, ltResponseList);
	}

	@Transactional
	public Long deleteById(Long lectureIdx) {
		lectureRepository.deleteById(lectureIdx);
		return lectureIdx;
	}
}
