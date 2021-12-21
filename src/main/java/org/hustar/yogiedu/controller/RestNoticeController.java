package org.hustar.yogiedu.controller;

import java.util.List;

import org.hustar.yogiedu.dto.notice.NoticeResponseDto;
import org.hustar.yogiedu.dto.notice.NoticeSaveRequestDto;
import org.hustar.yogiedu.dto.notice.NoticeUpdateRequestDto;
import org.hustar.yogiedu.service.NoticeService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api")
public class RestNoticeController {

	private final NoticeService noticeService;

//	공지사항 목록 뽑기. 파라미터 필요없음.
	@GetMapping("/noticeList")
	public List<NoticeResponseDto> getNoticeList() {
		List<NoticeResponseDto> list = noticeService.findAll();
		System.out.println("이거 맞냐? > " + list.get(0).getRegDate());
		return list;
	}

//	공지사항 세부글 정보 뽑기. 
//	/api/notice?notIdx=1 경로로 요청.
	@GetMapping("/notice")
	public NoticeResponseDto getNotice(Long notIdx) {
		return noticeService.findById(notIdx);
	}

//	공지사항 페이징
//	@GetMapping("/noticelist")
//	public List<NoticeResponseDto> getNoticeList(@PageableDefault(size = 10) Pageable pageable){
//		return noticeService.findAllByOrderByNotIdxDesc(pageable).getContent();
//	}
	
	@GetMapping("/noticelist")
	public Page<NoticeResponseDto> getNoticeList(@PageableDefault(size = 10) Pageable pageable){
		return noticeService.findAllByOrderByNotIdxDesc(pageable);
	}

	
//	공지사항 등록.
//	json 형태로 body를 작성한 뒤, /api/notice 경로로 요청. 
	@PostMapping("/notice")
	public Long regNotice(@RequestBody NoticeSaveRequestDto noticeDto) {
		return noticeService.save(noticeDto);
	}

//	공지사항 수정.
//	json 형태로 body를 작성한 뒤, /api/notice?notIdx=1 경로로 요청. 
	@PutMapping("/notice")
	public Long updateNotice(Long notIdx, @RequestBody NoticeUpdateRequestDto requestDto) {
		return noticeService.update(notIdx, requestDto);
	}

//	공지사항 삭제.
//	/api/notice?notIdx=1 경로로 요청.
	@DeleteMapping("/notice")
	public Long deleteNotice(Long notIdx) {
		return noticeService.deleteById(notIdx);
	}
}
