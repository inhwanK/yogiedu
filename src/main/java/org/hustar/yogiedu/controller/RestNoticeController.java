package org.hustar.yogiedu.controller;

import org.hustar.yogiedu.dto.NoticeSaveRequestDto;
import org.hustar.yogiedu.service.NoticeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public ResponseEntity<Object> getNoticeList() {

//		Notice notice;
//		Optional<Notice> result = noticeRepository.findById((long) 1);
//		
//		notice = result.get();
//		System.out.println(notice);
//		return ResponseEntity.status(HttpStatus.OK).body(notice);
		return null;
	}
	
	@PostMapping("/notice")
	public Long save(@RequestBody NoticeSaveRequestDto noticeDto) {
		return noticeService.save(noticeDto);
	}
}
