package org.hustar.yogiedu.dto.lecture;

import java.util.ArrayList;
import java.util.List;

import org.hustar.yogiedu.domain.lecture.Lecture;

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
	private String subjectName;
	private String teacherName;
	
//	시간 문자열.
	private String lectureTimeStr;
	
//	시간 배열.
	private List<Integer> lectureTimeArr = new ArrayList<Integer>();

	private String lectureGrade;
	
//	아카데미 하나의 강의정보 볼 때 사용.
	@Builder
	public LectureResponseDto(Long lectureIdx, Long acaIdx, String lectureName,String subjectName, String teacherName,
			String lectureTimeStr, List<Integer> lectureTimeArr, String lectureGrade) {
		super();
		this.lectureIdx = lectureIdx;
		this.acaIdx = acaIdx;
		this.lectureName = lectureName;
		this.teacherName = teacherName;
		this.subjectName = subjectName;
		this.lectureTimeStr = lectureTimeStr;
		this.lectureTimeArr = lectureTimeArr;
		this.lectureGrade = lectureGrade;
	}

	// 리스트 뽑을 때 사용.
	public LectureResponseDto(Lecture entity) {
		super();
		this.lectureIdx = entity.getLectureIdx();
		this.acaIdx = entity.getAcademy().getAcaIdx();
		this.lectureName = entity.getLectureName();
		this.subjectName = entity.getSubjectName();
		this.teacherName = entity.getTeacherName();
		this.lectureTimeStr = entity.getLectureTimeStr();
		
		if (entity.getLectureTimeStr() != null) {
			String[] timeTable = entity.getLectureTimeStr().split(",");

			for (int i = 0; i < timeTable.length; i++) {
				this.lectureTimeArr.add(Integer.parseInt(timeTable[i].trim()));
			}
		}
		
		this.lectureGrade = entity.getLectureGrade();
	}

}
