package org.hustar.yogiedu.domain.lecture;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hustar.yogiedu.domain.academy.Academy;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@Entity
@Table(name = "lecture")
public class Lecture {

	// 스네이크 케이스인 컬럼 이름이 알아서 카멜케이스로 변환되어 변수로 매핑됨.
	// 변환된 변수이름과 다를 경우에 @Column 어노테이션으로 통해 매핑.

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long lectureIdx;

	@ManyToOne
	@JoinColumn(name = "aca_idx")
	private Academy academy;
	
	private String lectureName;
	private String teacherName;
	private String lectureTimeStr;
	
	@Builder
	public Lecture(Long lectureIdx, Academy academy, String lectureName, String teacherName, String lectureTimeStr) {
		this.lectureIdx = lectureIdx;
		this.academy = academy;
		this.lectureName = lectureName;
		this.teacherName = teacherName;
		this.lectureTimeStr = lectureTimeStr;
	}
	

}
