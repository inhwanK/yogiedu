package org.hustar.yogiedu.dto.lecture;

import org.hustar.yogiedu.domain.academy.Academy;
import org.hustar.yogiedu.domain.lecture.Lecture;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class LectureSaveRequestDto {

	// Academy 객체의 acaIdx 값을 요청값으로 받음.
	@NonNull
	private Long acaIdx;

	private String lectureName;
	private String teacherName;
	private String subjectName;
	private String lectureTimeStr;
	private String lectureGrade;

	@Builder
	public LectureSaveRequestDto(@NonNull Long acaIdx, String lectureName, String teacherName, String subjectName,
			String lectureTimeStr, String lectureGrade) {
		super();
		this.acaIdx = acaIdx;
		this.lectureName = lectureName;
		this.teacherName = teacherName;
		this.subjectName = subjectName;
		this.lectureTimeStr = lectureTimeStr;
		this.lectureGrade = lectureGrade;
	}

	public Lecture toEntity() {
		return Lecture.builder()
				.academy(Academy.builder()
						.acaIdx(acaIdx)
						.build())
				.lectureName(lectureName)
				.teacherName(teacherName)
				.subjectName(subjectName)
				.lectureTimeStr(lectureTimeStr)
				.lectureGrade(lectureGrade)
				.build();
	}
}