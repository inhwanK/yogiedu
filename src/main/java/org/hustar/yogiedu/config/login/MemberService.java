package org.hustar.yogiedu.config.login;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import lombok.AllArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberService implements UserDetailsService {
	
    private MemberRepository memberRepository;

    @Transactional
    public int joinUser(MemberDto memberDto) {
        // 비밀번호 암호화
//        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//        
//        memberDto.setMemberPassEncoding(passwordEncoder.encode(memberDto.getMemberPassword()));
//        return memberRepository.save(memberDto.toEntity()).getMemberId();
    	
//    	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//        memberDto.setMemberPassEncoding(passwordEncoder.encode(memberDto.getMemberPassword()));
    	
    	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        memberDto.setMemberPassword(passwordEncoder.encode(memberDto.getMemberPassword()));

        return memberRepository.save(memberDto.toEntity()).getMemberIdx();
        
    }
        

//        memberDto.setMember_password(passwordEncoder.encode(memberDto.getMember_password()));
//        memberDto.setMemberPassEncoding(passwordEncoder.encode(memberDto.getMember_password()));
//        return memberRepository.save(memberDto.toEntity()).getMember_id();
        

    @Override
    public UserDetails loadUserByUsername(String memberId) throws UsernameNotFoundException {
//        Optional<MemberEntity> userEntityWrapper = memberRepository.findByMember_id(userId);
    	Optional<MemberEntity> userEntityWrapper = memberRepository.findByMemberId(memberId);
        MemberEntity userEntity = userEntityWrapper.get();

//    	MemberEntity userEntity = memberRepository.findByMemberId(userId);
        List<GrantedAuthority> authorities = new ArrayList<>();

//        authorities.add(new SimpleGrantedAuthority(Role.MEMBER.getValue()));
//
//        return new User(userEntity.getMemberId(), userEntity.getMemberPassword(), authorities);
//    }
        
        if (("alsrl520").equals(memberId)) {
            authorities.add(new SimpleGrantedAuthority(Role.ADMIN.getValue()));
        } else {
            authorities.add(new SimpleGrantedAuthority(Role.MEMBER.getValue()));
        }

        return new User(userEntity.getMemberId(), userEntity.getMemberPassword(), authorities);
    }
}
