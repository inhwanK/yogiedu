package org.hustar.yogiedu.controller;

import java.util.List;

import org.hustar.yogiedu.dto.notice.NoticeResponseDto;
import org.hustar.yogiedu.dto.notice.NoticeSaveRequestDto;
import org.hustar.yogiedu.dto.notice.NoticeUpdateRequestDto;
import org.hustar.yogiedu.service.NoticeService;
import org.springframework.web.bind.annotation.DeleteMapping;
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
	public List<NoticeResponseDto> getNoticeList() {
		return noticeService.findAll();
	}
	
	@GetMapping("/notice/{notIdx}")
	public NoticeResponseDto findById(@PathVariable Long notIdx) {
		return noticeService.findById(notIdx);	
	}
	
	@PostMapping("/notice")
	public Long regNotice(@RequestBody NoticeSaveRequestDto noticeDto) {
		return noticeService.save(noticeDto);
	}
	
	@PutMapping("/notice/{notIdx}")
	public Long updateNotice(@PathVariable Long notIdx, @RequestBody NoticeUpdateRequestDto requestDto) {
		return noticeService.update(notIdx, requestDto);
	}
	
	@DeleteMapping("/notice/{notIdx}")
	public Long deleteNotice(@PathVariable Long notIdx) {
		return noticeService.deleteById(notIdx);
	}
}
