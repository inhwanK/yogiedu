package org.hustar.yogiedu.dto.lecturetime;

import org.hustar.yogiedu.domain.lecture.Lecture;
import org.hustar.yogiedu.domain.lecturetime.LectureTime;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class LectureTimeSaveRequestDto {

	private Long lectureIdx;
	private String lectureWeek;
	private int lectureStartTime;
	private int lectureEndTime;
	
	
	@Builder
	public LectureTimeSaveRequestDto(Long lectureIdx, String lectureWeek, int lectureStartTime, int lectureEndTime) {
		super();
		this.lectureIdx = lectureIdx;
		this.lectureWeek = lectureWeek;
		this.lectureStartTime = lectureStartTime;
		this.lectureEndTime = lectureEndTime;
	}
	
	public LectureTime toEntity() {
		return LectureTime.builder()
				.lecture(Lecture.builder()
						.lectureIdx(lectureIdx)
						.build())
				.lectureWeek(lectureWeek)
				.lectureStartTime(lectureStartTime)
				.lectureEndTime(lectureEndTime)
				.build();
	}
}
