package org.hustar.yogiedu.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.lecturetime.LectureTime;
import org.hustar.yogiedu.domain.lecturetime.LectureTimeRepository;
import org.hustar.yogiedu.dto.lecturetime.LectureTimeResponseDto;
import org.hustar.yogiedu.dto.lecturetime.LectureTimeSaveRequestDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class LectureTimeService {
	private final LectureTimeRepository ltRepository;
	
	@Transactional
	public List<LectureTimeResponseDto> findAll(){
		
		List<LectureTime> entityList = ltRepository.findAll();
		List<LectureTimeResponseDto> ltList = new ArrayList<LectureTimeResponseDto>();
		
		for (int i = 0; i < entityList.size(); i++) {
			ltList.add(new LectureTimeResponseDto(entityList.get(i)));
		}
		return ltList;
	}
	
	@Transactional
	public Long save(LectureTimeSaveRequestDto requestDto) {
		return ltRepository.save(requestDto.toEntity()).getLectureTimeIdx();
	}
}
