package org.hustar.yogiedu.dto.lecture;

import org.hustar.yogiedu.domain.academy.Academy;
import org.hustar.yogiedu.domain.lecture.Lecture;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Getter
@NoArgsConstructor
public class LectureSaveRequestDto {
	
	// Academy 객체의 acaIdx 값을 요청값으로 받음.
	@NonNull
	private Long acaIdx;
	private String lectureName;
	private String teacherName;
	
//	인표야 이 데이터 요청할 때는 나한테 얘기해!
	private String lectureTimeNum;
	
	@Builder
	public LectureSaveRequestDto(@NonNull Long acaIdx, String lectureName, String teacherName, String lectureTimeNum) {
		super();
		this.acaIdx = acaIdx;
		this.lectureName = lectureName;
		this.teacherName = teacherName;
		this.lectureTimeNum = lectureTimeNum;
	}
	
	public Lecture toEntity() {
		return Lecture.builder()
				.academy(Academy.builder()
						.acaIdx(acaIdx)
						.build())
				.lectureName(lectureName)
				.teacherName(teacherName)
				.lectureTimeNum(lectureTimeNum)
				.build();
	}
}