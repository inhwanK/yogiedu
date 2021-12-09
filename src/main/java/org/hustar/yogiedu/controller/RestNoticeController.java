package org.hustar.yogiedu.controller;

import java.util.Optional;

import org.hustar.yogiedu.dao.NoticeDao;
import org.hustar.yogiedu.domain.notice.Notice;
import org.hustar.yogiedu.domain.notice.NoticeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class RestNoticeController {

	@Autowired
	private NoticeDao dao;

	@Autowired
	private NoticeRepository noticeRepository;

	@GetMapping("/index")
	public ResponseEntity<Object> index() {
//		NoticeDto dto = dao.getNotice();

		Notice notice;
		Optional<Notice> result = noticeRepository.findById((long) 1);

		System.out.println("=============================");
		
		notice = result.get();
		System.out.println(notice);
//		return "notice > " + notice.getNotContent();
//		return notice;
//		return "api test > " + dto+"<br> jpa test"+noticeRepository.findAll();
		return ResponseEntity.status(HttpStatus.OK).body(notice);
	}
}
