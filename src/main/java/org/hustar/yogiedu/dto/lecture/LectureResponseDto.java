package org.hustar.yogiedu.dto.lecture;

import org.hustar.yogiedu.domain.lecture.Lecture;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class LectureResponseDto {
	private Long lectureIdx;
	private Long acaIdx;
	private String lectureName;
	private String teacherName;
	
	public LectureResponseDto(Lecture entity) {
		super();
		this.lectureIdx = entity.getLectureIdx();
		this.acaIdx = entity.getAcademy().getAcaIdx();
		this.lectureName = entity.getLectureName();
		this.teacherName = entity.getTeacherName();
	}
	
	
}
