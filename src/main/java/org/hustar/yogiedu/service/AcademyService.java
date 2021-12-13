package org.hustar.yogiedu.service;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.academy.AcademyRepository;
import org.hustar.yogiedu.dto.academy.AcademySaveRequestDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AcademyService {

	private final AcademyRepository academyRepository;
	
	@Transactional
	public Long save(AcademySaveRequestDto requestDto) {
		requestDto.toEntity();
		
		System.out.println(requestDto.toString());
		return academyRepository.save(requestDto.toEntity()).getAcaIdx();
	}
}
