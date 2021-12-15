package org.hustar.yogiedu.dto.lecturetime;

import org.hustar.yogiedu.domain.lecturetime.LectureTime;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class LectureTimeResponseDto {
	
	private Long lectureTimeIdx;
	private Long lectureIdx;
	private String lectureWeek;
	private int lectureStartTime;
	private int lectureEndTime;
	
	public LectureTimeResponseDto(LectureTime entity) {
		super();
		this.lectureTimeIdx = entity.getLectureTimeIdx();
		this.lectureIdx = entity.getLecture().getLectureIdx();
		this.lectureWeek = entity.getLectureWeek();
		this.lectureStartTime = entity.getLectureStartTime();
		this.lectureEndTime = entity.getLectureEndTime();
	}
	
}
