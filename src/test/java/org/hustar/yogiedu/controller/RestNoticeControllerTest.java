package org.hustar.yogiedu.controller;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.Date;
import java.util.List;

import org.hustar.yogiedu.domain.notice.Notice;
import org.hustar.yogiedu.domain.notice.NoticeRepository;
import org.hustar.yogiedu.dto.NoticeSaveRequestDto;
import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class RestNoticeControllerTest {

	@LocalServerPort
	private int port;
	
	@Autowired
	private TestRestTemplate restTemplate;
	
	@Autowired
	private NoticeRepository noticeRepository;
	
	@After
	public void tearDonw() throws Exception{
		noticeRepository.deleteAll();
	}
	
	@Test
	public void test() {
		
		String notTitle = "api test title";
		String notContent = "api test content";
		Date regDate = new Date();
		String writer = "김인환";
		
		NoticeSaveRequestDto requestDto = NoticeSaveRequestDto.builder()
				.notTitle(notTitle)
				.notContent(notContent)
				.regDate(regDate)
				.writer(writer)
				.build();
		
		String url = "http://localhost:"+port+"/api/notice";
		
		ResponseEntity<Long> responseEntity = restTemplate.postForEntity(url, requestDto, Long.class);
		
		assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.OK);
		assertThat(responseEntity.getBody()).isGreaterThan(0L);
		
		List<Notice> all = noticeRepository.findAll();
		assertThat(all.get(0).getNotTitle()).isEqualTo(notTitle);
		assertThat(all.get(0).getNotContent()).isEqualTo(notContent);
		
	}

}
