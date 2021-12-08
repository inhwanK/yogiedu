package org.hustar.yogiedu.controller;

import org.hustar.yogiedu.dao.NoticeDao;
import org.hustar.yogiedu.domain.notices.Notices;
import org.hustar.yogiedu.domain.notices.NoticesRepository;
import org.hustar.yogiedu.dto.NoticeDto;
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
		NoticeDto dto = dao.getNotice();
		
		return "api test > " + dto+"<br> jpa test"+noticeRepository.findAll();
	}
}
