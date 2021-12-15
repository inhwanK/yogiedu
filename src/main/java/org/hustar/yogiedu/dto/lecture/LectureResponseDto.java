package org.hustar.yogiedu.dto.lecture;

import java.util.ArrayList;
import java.util.List;

import org.hustar.yogiedu.domain.lecture.Lecture;
import org.hustar.yogiedu.domain.lecturetime.LectureTime;
import org.hustar.yogiedu.dto.lecturetime.LectureTimeResponseDto;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class LectureResponseDto {
	private Long lectureIdx;
	private Long acaIdx;
	private String lectureName;
	private String teacherName;
	private List<LectureTimeResponseDto> lectureTimes = new ArrayList<LectureTimeResponseDto>();

	public LectureResponseDto(Lecture entity) {
		super();
		this.lectureIdx = entity.getLectureIdx();
		this.acaIdx = entity.getAcademy().getAcaIdx();
		this.lectureName = entity.getLectureName();
		this.teacherName = entity.getTeacherName();
	}

	public LectureResponseDto(Lecture entity, List<LectureTimeResponseDto> lectureTimes) {
		super();
		this.lectureIdx = entity.getLectureIdx();
		this.acaIdx = entity.getAcademy().getAcaIdx();
		this.lectureName = entity.getLectureName();
		this.teacherName = entity.getTeacherName();
		this.lectureTimes = lectureTimes;
	}
}
