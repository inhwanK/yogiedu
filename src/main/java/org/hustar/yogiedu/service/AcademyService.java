package org.hustar.yogiedu.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.academy.Academy;
import org.hustar.yogiedu.domain.academy.AcademyRepository;
import org.hustar.yogiedu.dto.academy.AcademyResponseDto;
import org.hustar.yogiedu.dto.academy.AcademySaveRequestDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AcademyService {

	private final AcademyRepository academyRepository;
	
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
		
		for(int i =0;i< entityList.size();i++) {
			academyList.add(new AcademyResponseDto(entityList.get(i)));
		}
		
		return academyList;
	}
	
	@Transactional
	public AcademyResponseDto findById(Long acaIdx) {
		Optional<Academy> entity = academyRepository.findById(acaIdx);
		
		return new AcademyResponseDto(entity.get());
	}
	
	// 기본키에 따라 삭제하기.
	@Transactional
	public Long deleteById(Long acaIdx) {
		academyRepository.deleteById(acaIdx);
		return acaIdx;
	}
}
