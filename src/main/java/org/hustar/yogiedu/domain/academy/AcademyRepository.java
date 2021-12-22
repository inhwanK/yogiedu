package org.hustar.yogiedu.domain.academy;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AcademyRepository extends JpaRepository<Academy, Long> {

	List<Academy> findByAdminDistName(String adminDistName);
	List<Academy> findByAdminDistNameAndLeCrseNameContaining(String adminDistName, String leCrseName);
	
	Page<Academy> findAllByOrderByAcaNmDesc(Pageable pageable);
	Page<Academy> findByAdminDistNameOrderByAcaNmDesc(String adminDistName, Pageable pageable);
}
