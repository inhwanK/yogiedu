package org.hustar.yogiedu.service;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.academy.AcademyRepository;
import org.hustar.yogiedu.dto.academy.AcademySaveRepositoryDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AcademyService {

	private final AcademyRepository academyRepository;

	@Transactional
	public Long save(AcademySaveRepositoryDto requestDto) {
		return academyRepository.save(requestDto.toEntity()).getAcaIdx();
	}
}
