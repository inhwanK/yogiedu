package org.hustar.yogiedu.controller;

import java.util.Optional;

import org.hustar.yogiedu.dao.NoticeDao;
import org.hustar.yogiedu.domain.notices.Notices;
import org.hustar.yogiedu.domain.notices.NoticesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class RestNoticeController {

	@Autowired
	private NoticeDao dao;

	@Autowired
	private NoticesRepository noticeRepository;

	@GetMapping("/index")
	public String index() {
//		NoticeDto dto = dao.getNotice();

		Notices notice;
		Optional<Notices> result = noticeRepository.findById((long) 1);

		System.out.println("=============================");
		
		notice = result.get();
		System.out.println(notice);
		return "notice > " + notice.toString();

//		return "api test > " + dto+"<br> jpa test"+noticeRepository.findAll();
	}
}
