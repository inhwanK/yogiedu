package org.hustar.yogiedu.dto.lecture;

import org.hustar.yogiedu.domain.academy.Academy;
import org.hustar.yogiedu.domain.lecture.Lecture;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class LectureSaveRequestDto {
	
	private Academy academy;
	private String lectureName;
	private String teacherName;
	
	@Builder
	public LectureSaveRequestDto(Academy academy, String lectureName, String teacherName) {
		super();
		this.academy = academy;
		this.lectureName = lectureName;
		this.teacherName = teacherName;
	}
	
	public Lecture toEntity() {
		return Lecture.builder()
				.academy(academy)
				.lectureName(lectureName)
				.teacherName(teacherName)
				.build();
	}
}
