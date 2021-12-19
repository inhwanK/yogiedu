package org.hustar.yogiedu.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.timetable.TimeTable;
import org.hustar.yogiedu.domain.timetable.TimeTableRepository;
import org.hustar.yogiedu.dto.timetable.TimeTableSaveRequestDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class TimeTableService {

	private final TimeTableRepository timeTableRepository;

//	수강신청.
	@Transactional
	public List<Long> save(TimeTableSaveRequestDto requestDto) {
		
		List<Long> timeTbIdxList = new ArrayList<Long>();
		
		TimeTable entity;
		
		for (int i = 0; i < requestDto.toEntity().size(); i++) {
			
			entity = requestDto.toEntity().get(i);
			timeTbIdxList.add(timeTableRepository.save(entity).getTimeTableIdx());
			
		}

		return timeTbIdxList;
	}
}
