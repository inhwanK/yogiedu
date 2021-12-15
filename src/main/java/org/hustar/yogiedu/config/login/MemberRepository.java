package org.hustar.yogiedu.config.login;

import org.hustar.yogiedu.config.login.MemberEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface MemberRepository extends JpaRepository<MemberEntity, Integer> {
//    Optional<MemberEntity> findByMember_id(String memberId);
	Optional<MemberEntity> findByMemberId(String memberId);
}