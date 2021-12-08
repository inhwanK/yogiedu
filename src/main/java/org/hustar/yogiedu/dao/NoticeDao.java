package org.hustar.yogiedu.dao;

import org.hustar.yogiedu.dto.NoticeDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeDao {
	
	@Autowired
	private NoticeMapper mapper;
	
	public NoticeDto getNotice() {
		
		return mapper.find();
	}
}
