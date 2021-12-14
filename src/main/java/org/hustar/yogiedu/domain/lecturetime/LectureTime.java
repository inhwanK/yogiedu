package org.hustar.yogiedu.domain.lecturetime;

import java.sql.Timestamp;

import javax.persistence.Entity;
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
	private Long lectureTimeidx;
	
	@ManyToOne
	@JoinColumn(name = "lecture_idx")
	private Lecture lecture;
	private String lectureWeek;
	private Timestamp lectureStartTime;
	private Timestamp lectureEndTime;
	
	@Builder
	public LectureTime(Long lectureTimeidx, Lecture lecture, String lectureWeek, Timestamp lectureStartTime,
			Timestamp lectureEndTime) {
		super();
		this.lectureTimeidx = lectureTimeidx;
		this.lecture = lecture;
		this.lectureWeek = lectureWeek;
		this.lectureStartTime = lectureStartTime;
		this.lectureEndTime = lectureEndTime;
	}	
}
