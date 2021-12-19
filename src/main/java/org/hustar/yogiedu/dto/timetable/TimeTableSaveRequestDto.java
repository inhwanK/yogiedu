package org.hustar.yogiedu.dto.timetable;

import java.util.ArrayList;
import java.util.List;

import org.hustar.yogiedu.domain.timetable.TimeTable;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class TimeTableSaveRequestDto {

	private Long userIdx;
	private List<Long> lectureIdxList;

	@Builder
	public TimeTableSaveRequestDto(Long userIdx, List<Long> lectureIdxList) {
		this.userIdx = userIdx;
		this.lectureIdxList = lectureIdxList;
	}

	public List<TimeTable> toEntity() {
		
		List<TimeTable> tableList = new ArrayList<TimeTable>();
		
		for(int i = 0; i < lectureIdxList.size();i++) {
			tableList.add(TimeTable.builder()
					.userIdx(userIdx)
					.lectureIdx(lectureIdxList.get(i))
					.build());
		}		
		return tableList;
	}

}
