package org.hustar.yogiedu.service;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.notice.NoticeRepository;
import org.hustar.yogiedu.dto.NoticeSaveRequestDto;
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
}
