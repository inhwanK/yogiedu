package org.hustar.yogiedu.domain.academy;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AcademyRepository extends JpaRepository<Academy, Long> {

	List<Academy> findByAdminDistName(String adminDistName);
	List<Academy> findByAdminDistNameAndLeCrseNameLike(String adminDistName, String leCrseName);
}
