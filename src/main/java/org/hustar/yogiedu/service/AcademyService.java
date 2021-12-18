package org.hustar.yogiedu.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.academy.Academy;
import org.hustar.yogiedu.domain.academy.AcademyRepository;
import org.hustar.yogiedu.domain.lecture.LectureRepository;
import org.hustar.yogiedu.dto.academy.AcademyResponseDto;
import org.hustar.yogiedu.dto.academy.AcademySaveRequestDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AcademyService {

	private final AcademyRepository academyRepository;
	private final LectureRepository lectureRepository;

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
	
	// 학원 지역별로 검색.
	@Transactional
	public List<AcademyResponseDto> findByAdminDistName(String adminDistName){
		
		List<Academy> entityList = academyRepository.findByAdminDistName(adminDistName);
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

//		그냥 요청 두번해야돼...
		return new AcademyResponseDto(entity);
	}

	// 기본키에 따라 삭제하기.
	@Transactional
	public Long deleteById(Long acaIdx) {
		academyRepository.deleteById(acaIdx);
		return acaIdx;
	}
}
