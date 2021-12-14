package org.hustar.yogiedu.dto.lecture;

import org.hustar.yogiedu.domain.academy.Academy;
import org.hustar.yogiedu.domain.lecture.Lecture;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class LectureSaveRequestDto {
	
//	private Academy academy;
	
	// Academy 객체의 acaIdx 값을 요청값으로 받음.
	private Long acaIdx;
	private String lectureName;
	private String teacherName;
	
	@Builder
	public LectureSaveRequestDto(Long acaIdx, String lectureName, String teacherName) {
		super();
		this.acaIdx = acaIdx;
		this.lectureName = lectureName;
		this.teacherName = teacherName;
	}
	
	public Lecture toEntity() {
		return Lecture.builder()
				.academy(Academy.builder()
						.acaIdx(acaIdx)
						.build())
				.lectureName(lectureName)
				.teacherName(teacherName)
				.build();
	}
}
