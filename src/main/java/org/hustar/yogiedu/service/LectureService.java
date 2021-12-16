package org.hustar.yogiedu.service;

import java.util.ArrayList;
import java.util.List;

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
		Lecture entity = lectureRepository.findById(lectureIdx)
				.orElseThrow(() -> new IllegalArgumentException("해당 강의가 없습니다. id=" + lectureIdx));
		
		List<Integer> lectureTimeArr = transLectureTimeArr(entity);
		
		LectureResponseDto responseDto = LectureResponseDto.builder()
				.lectureIdx(entity.getLectureIdx())
				.acaIdx(entity.getAcademy().getAcaIdx())
				.lectureName(entity.getLectureName())
				.teacherName(entity.getTeacherName())
				.lectureTimeStr(entity.getLectureTimeStr())
				.lectureTimeArr(lectureTimeArr)
				.build();
		
		return responseDto;
	}

	@Transactional
	public Long deleteById(Long lectureIdx) {
		lectureRepository.deleteById(lectureIdx);
		return lectureIdx;
	}
	
	// 강의시간 문자열 -> 숫자 배열로 변환.
	private List<Integer> transLectureTimeArr(Lecture entity) {
		String[] timeTable = entity.getLectureTimeStr().split(",");
		List<Integer> lectureTimeArr = new ArrayList<Integer>();
		
		for(int i = 0 ; i < timeTable.length;i++) {	
			lectureTimeArr.add(Integer.parseInt(timeTable[i].trim()));
		}
		return lectureTimeArr;
	}

	
}
