package org.hustar.yogiedu.domain.lecture;

import java.util.List;

import org.hustar.yogiedu.domain.academy.Academy;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LectureRepository extends JpaRepository<Lecture, Long> {
//	List<Lecture> findByAcademy(Academy academy);
}
