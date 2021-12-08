package org.hustar.yogiedu.controller;

import org.hustar.yogiedu.dao.NoticeDao;
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
	
	@GetMapping("/index")
	public String index() {
		NoticeDto dto = dao.getNotice(); 
		return "api test > " + dto;
	}
}
