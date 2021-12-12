package org.hustar.yogiedu.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.academy.Academy;
import org.hustar.yogiedu.domain.academy.AcademyRepository;
import org.hustar.yogiedu.dto.academy.AcademyResponseDto;
import org.hustar.yogiedu.dto.academy.AcademySaveRepositoryDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AcademyService {

	private final AcademyRepository academyRepository;
	
//	@Transactional
//	public Long save(AcademySaveRepositoryDto requestDto) {
//		return academyRepository.save(requestDto.toEntity()).getAcaIdx();
//		return academyRepository.save();
//	}

	@Transactional
	public Long save(Academy academy) {
		return academyRepository.save(academy).getAcaIdx();
	}
	
	@Transactional
	public List<AcademyResponseDto> findAll() {
		List<Academy> entityList = academyRepository.findAll();
		List<AcademyResponseDto> academyList = new ArrayList<AcademyResponseDto>();
		
		for(int i = 0 ; i < entityList.size();i++) {
			academyList.add(new AcademyResponseDto(entityList.get(i)));
		}
		
		return academyList;
	}
	
//	@Transactional
//	public void api() {
//		findAll()
//	}
}
