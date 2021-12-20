package org.hustar.yogiedu.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hustar.yogiedu.domain.notice.Notice;
import org.hustar.yogiedu.domain.notice.NoticeRepository;
import org.hustar.yogiedu.dto.notice.NoticeResponseDto;
import org.hustar.yogiedu.dto.notice.NoticeSaveRequestDto;
import org.hustar.yogiedu.dto.notice.NoticeUpdateRequestDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
				.orElseThrow(() -> new IllegalArgumentException("해당 게시글이 없습니다. id=" + notIdx));

		notice.update(requestDto.getNotTitle(), requestDto.getNotContent());
		return notIdx;
	}

	@Transactional
	public List<NoticeResponseDto> findAll() {

		List<Notice> entityList = noticeRepository.findAll();
		List<NoticeResponseDto> noticeList = new ArrayList<NoticeResponseDto>();

		for (int i = 0; i < entityList.size(); i++) {
			noticeList.add(new NoticeResponseDto(entityList.get(i)));
		}

		return noticeList;
	}

	@Transactional
	public NoticeResponseDto findById(Long notIdx) {
		Notice entity = noticeRepository.findById(notIdx)
				.orElseThrow(() -> new IllegalArgumentException("해당 게시글이 없습니다. id=" + notIdx));

		return new NoticeResponseDto(entity);
	}

	@Transactional
	public Page<NoticeResponseDto> findAllByOrderByNotIdxDesc(Pageable pageable){
		Page<NoticeResponseDto> noticeList = 
				noticeRepository.findAllByOrderByNotIdxDesc(pageable).map(entity -> new NoticeResponseDto(entity));
//		System.out.println("제대로 나오고 있는지 ? > " + noticeList.getContent().get(0));
//		System.out.println("이건 제대로 나오고 있는지 ? >"+noticeList.getContent());
//		Page<NoticeResponseDto> noticeList = entityList.map(null);
		
		return noticeList;
	}
	
	@Transactional
	public Long deleteById(Long notIdx) {
		noticeRepository.deleteById(notIdx);
		return notIdx;
	}
}
