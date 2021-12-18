package org.hustar.yogiedu.domain.user;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

	Optional<User> findByUserEmail(String userEmail);
//	User findByUserEmail(String userEmail);
}
