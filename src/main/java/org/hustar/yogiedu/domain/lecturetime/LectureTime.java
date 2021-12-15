package org.hustar.yogiedu.domain.lecturetime;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hustar.yogiedu.domain.lecture.Lecture;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;


@Getter
@NoArgsConstructor
@Entity
@Table(name = "lecture_time")
public class LectureTime {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "lecture_time_idx")
	private Long lectureTimeIdx;
	
	@ManyToOne
	@JoinColumn(name = "lecture_idx")
	private Lecture lecture;
	private String lectureWeek;
	private int lectureStartTime;
	private int lectureEndTime;
	
	@Builder
	public LectureTime(Long lectureTimeIdx, Lecture lecture, String lectureWeek, int lectureStartTime,
			int lectureEndTime) {
		super();
		this.lectureTimeIdx = lectureTimeIdx;
		this.lecture = lecture;
		this.lectureWeek = lectureWeek;
		this.lectureStartTime = lectureStartTime;
		this.lectureEndTime = lectureEndTime;
	}
		
}
