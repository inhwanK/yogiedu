package org.hustar.yogiedu.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.academy.Academy;
import org.hustar.yogiedu.domain.academy.AcademyRepository;
import org.hustar.yogiedu.domain.lecture.Lecture;
import org.hustar.yogiedu.domain.lecture.LectureRepository;
import org.hustar.yogiedu.domain.lecturetime.LectureTime;
import org.hustar.yogiedu.domain.lecturetime.LectureTimeRepository;
import org.hustar.yogiedu.dto.academy.AcademyResponseDto;
import org.hustar.yogiedu.dto.academy.AcademySaveRequestDto;
import org.hustar.yogiedu.dto.lecture.LectureResponseDto;
import org.hustar.yogiedu.dto.lecturetime.LectureTimeResponseDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AcademyService {

	private final AcademyRepository academyRepository;
	private final LectureRepository lectureRepository;
	private final LectureTimeRepository ltResponsitory;

	// 학원 등록.
	@Transactional
	public Long save(AcademySaveRequestDto requestDto) {

//		requestDto.toEntity();
//		System.out.println(requestDto.toString());

		return academyRepository.save(requestDto.toEntity()).getAcaIdx();
	}

	// 학원 목록 가져오기
	@Transactional
	public List<AcademyResponseDto> findAll() {

		List<Academy> entityList = academyRepository.findAll();
		List<AcademyResponseDto> academyList = new ArrayList<AcademyResponseDto>();

		for (int i = 0; i < entityList.size(); i++) {
			academyList.add(new AcademyResponseDto(entityList.get(i)));
		}

		return academyList;
	}

//	학원번호를 통해 학원정보, 학원의 강의, 강의의 시간표 까지 한번에 가져오기.
	@Transactional
	public AcademyResponseDto findById(Long acaIdx) {

		Academy entity = academyRepository.findById(acaIdx)
				.orElseThrow(() -> new IllegalArgumentException("해당 게시글이 없습니다. id=" + acaIdx));

		List<Lecture> lectureEntityList = lectureRepository.findByAcademy(entity);
		List<LectureResponseDto> lectureResponseList = new ArrayList<LectureResponseDto>();

		Long lectureIdx;

		for (int i = 0; i < lectureEntityList.size(); i++) {

//			강의리스트에서 각 강의 번호를 가져옴.
			lectureIdx = lectureEntityList.get(i).getLectureIdx();
			Lecture lecture = lectureRepository.findById(lectureIdx)
					.orElseThrow(() -> new IllegalArgumentException("해당 강의가 없습니다."));

//			강의번호로 강의 시간을 가져오는 작업.
			List<LectureTime> ltEntityList = ltResponsitory.findByLecture(lecture);
			List<LectureTimeResponseDto> ltResponseDtos = new ArrayList<LectureTimeResponseDto>();

			for (int j = 0; j < ltEntityList.size(); j++) {
				ltResponseDtos.add(new LectureTimeResponseDto(ltEntityList.get(j)));
			}
			
			lectureResponseList.add(new LectureResponseDto(lecture, ltResponseDtos));
//			System.out.println("내가 좀 더 원하던 것 > "+lectureResponseList.get(i).getLectureName());
		}

		return new AcademyResponseDto(entity, lectureResponseList);
	}

	// 기본키에 따라 삭제하기.
	@Transactional
	public Long deleteById(Long acaIdx) {
		academyRepository.deleteById(acaIdx);
		return acaIdx;
	}
}
