package org.hustar.yogiedu.domain.timetable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Entity
@NoArgsConstructor
@Table(name = "timetable")
public class TimeTable {

	@Id
	@Column(name = "timetable_idx")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long timeTableIdx;
	private Long userIdx;
	private Long lectureIdx;

	@Builder
	public TimeTable(Long timeTableIdx, Long userIdx, Long lectureIdx) {
		this.timeTableIdx = timeTableIdx;
		this.userIdx = userIdx;
		this.lectureIdx = lectureIdx;
	}

}
