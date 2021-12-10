package org.hustar.yogiedu.controller;

import java.util.List;

import org.hustar.yogiedu.domain.notice.Notice;
import org.hustar.yogiedu.dto.NoticeResponseDto;
import org.hustar.yogiedu.dto.NoticeSaveRequestDto;
import org.hustar.yogiedu.dto.NoticeUpdateRequestDto;
import org.hustar.yogiedu.service.NoticeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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

	@GetMapping("/noticeList")
	public List<Notice> getNoticeList() {

//		Notice notice;
//		Optional<Notice> result = noticeRepository.findById((long) 1);
//		
//		notice = result.get();
//		System.out.println(notice);
//		return ResponseEntity.status(HttpStatus.OK).body(notice);
		return noticeService.findAll();
	}
	
	@PostMapping("/notice")
	public Long regNotice(@RequestBody NoticeSaveRequestDto noticeDto) {
		return noticeService.save(noticeDto);
	}
	
	@PutMapping("/notice/{notIdx}")
	public Long updateNotice(@PathVariable Long notIdx, @RequestBody NoticeUpdateRequestDto requestDto) {
		return noticeService.update(notIdx, requestDto);
	}
	
	@GetMapping("/notice/{notIdx}")
	public NoticeResponseDto findById(@PathVariable Long notIdx) {
		return noticeService.findById(notIdx);
	}
}
