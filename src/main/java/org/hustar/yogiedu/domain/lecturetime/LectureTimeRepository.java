package org.hustar.yogiedu.domain.lecturetime;

import java.util.List;

import org.hustar.yogiedu.domain.lecture.Lecture;
import org.springframework.data.jpa.repository.JpaRepository;



public interface LectureTimeRepository extends JpaRepository<LectureTime, Long> {
	List<LectureTime> findByLecture(Lecture lecture);
}
