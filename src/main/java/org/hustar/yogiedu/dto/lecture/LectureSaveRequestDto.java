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
	
//	인표야 이 데이터 요청할 때는 나한테 얘기해!
	private String lectureTimeStr;
	
	@Builder
	public LectureSaveRequestDto(@NonNull Long acaIdx, String lectureName, String teacherName, String lectureTimeStr) {
		super();
		this.acaIdx = acaIdx;
		this.lectureName = lectureName;
		this.teacherName = teacherName;
		this.lectureTimeStr = lectureTimeStr;
	}
	
	public Lecture toEntity() {
		return Lecture.builder()
				.academy(Academy.builder()
						.acaIdx(acaIdx)
						.build())
				.lectureName(lectureName)
				.teacherName(teacherName)
				.lectureTimeStr(lectureTimeStr)
				.build();
	}
}