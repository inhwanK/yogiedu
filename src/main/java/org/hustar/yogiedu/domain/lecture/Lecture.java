package org.hustar.yogiedu.domain.lecture;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@Entity
@Table(name = "lecture")
public class Lecture {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long lectureIdx;
	
	// 스네이크 케이스인 컬럼 이름이 알아서 카멜케이스로 변환되어 변수로 매핑됨.
	// 변환된 변수이름과 다를 경우에 @Column 어노테이션으로 통해 매핑.
	private Long acaIdx;
	private String lectureName;
	private String teacherName;
	
	@Builder
	public Lecture(Long lectureIdx, Long acaIdx, String lectureName, String teacherName) {
		super();
		this.lectureIdx = lectureIdx;
		this.acaIdx = acaIdx;
		this.lectureName = lectureName;
		this.teacherName = teacherName;
	}
}
