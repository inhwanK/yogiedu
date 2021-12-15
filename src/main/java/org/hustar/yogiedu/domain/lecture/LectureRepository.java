package org.hustar.yogiedu.domain.lecture;

import java.util.List;

import org.hustar.yogiedu.domain.academy.Academy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface LectureRepository extends JpaRepository<Lecture, Long>, JpaSpecificationExecutor<Lecture> {
	
	List<Lecture> findByAcademy(Academy academy);
}
