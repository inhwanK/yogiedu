package org.hustar.yogiedu.dto.lecture;

import java.util.ArrayList;
import java.util.List;

import org.hustar.yogiedu.domain.lecture.Lecture;
import org.hustar.yogiedu.domain.lecturetime.LectureTime;
import org.hustar.yogiedu.dto.lecturetime.LectureTimeResponseDto;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class LectureResponseDto {
	private Long lectureIdx;
	private Long acaIdx;
	private String lectureName;
	private String teacherName;
	private List<Integer> lectureTimeArr;
//	private List<LectureTimeResponseDto> lectureTimes = new ArrayList<LectureTimeResponseDto>();

	@Builder
	public LectureResponseDto(Long lectureIdx, Long acaIdx, String lectureName, String teacherName,
			List<Integer> lectureTimeArr) {
		super();
		this.lectureIdx = lectureIdx;
		this.acaIdx = acaIdx;
		this.lectureName = lectureName;
		this.teacherName = teacherName;
		this.lectureTimeArr = lectureTimeArr;
	}	
	
	
	public LectureResponseDto(Lecture entity) {
		super();
		this.lectureIdx = entity.getLectureIdx();
		this.acaIdx = entity.getAcademy().getAcaIdx();
		this.lectureName = entity.getLectureName();
		this.teacherName = entity.getTeacherName();
//		this.lectureTimeArr = entity.get
	}

	public LectureResponseDto(Lecture entity, List<LectureTimeResponseDto> lectureTimes) {
		super();
		this.lectureIdx = entity.getLectureIdx();
		this.acaIdx = entity.getAcademy().getAcaIdx();
		this.lectureName = entity.getLectureName();
		this.teacherName = entity.getTeacherName();
//		this.lectureTimes = lectureTimes;
	}

	
}
