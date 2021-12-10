package org.hustar.yogiedu.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.notice.Notice;
import org.hustar.yogiedu.domain.notice.NoticeRepository;
import org.hustar.yogiedu.dto.NoticeResponseDto;
import org.hustar.yogiedu.dto.NoticeSaveRequestDto;
import org.hustar.yogiedu.dto.NoticeUpdateRequestDto;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class NoticeService {
	
	private final NoticeRepository noticeRepository;
	
	@Transactional
	public Long save(NoticeSaveRequestDto requestDto) {
		return noticeRepository.save(requestDto.toEntity()).getNotIdx();
	}
	
	@Transactional
	public Long update(Long notIdx, NoticeUpdateRequestDto requestDto) {
		Notice notice = noticeRepository.findById(notIdx)
				.orElseThrow(() -> new IllegalArgumentException("해당 게시글이 없습니다. id="+notIdx));
		
		notice.update(requestDto.getNotTitle(), requestDto.getNotContent());
		return notIdx;
	}
	
	@Transactional
	public List<Notice> findAll(){
		
		List<Notice> noticeList = noticeRepository.findAll();
		return noticeList;
	}
	
	@Transactional
	public NoticeResponseDto findById(Long notIdx) {
		Notice entity = noticeRepository.findById(notIdx)
				.orElseThrow(() -> new IllegalArgumentException("해당 게시글이 없습니다. id="+notIdx));
		
		return new NoticeResponseDto(entity);
	}
}
