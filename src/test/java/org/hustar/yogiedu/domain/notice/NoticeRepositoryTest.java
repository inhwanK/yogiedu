package org.hustar.yogiedu.domain.notice;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.Date;
import java.util.List;

import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class NoticeRepositoryTest {

	@Autowired
	NoticeRepository noticeRepository;
	
	@After
	public void cleanup() {
//		noticeRepository.deleteAll();
	}
	
	@Test
	public void test() {
		String notTitle = "테스트";
		String notContent = "테스트 본문";
		
		noticeRepository.save(Notice.builder()
				.notTitle(notTitle)
				.notContent(notContent)
				.regDate(new Date())
				.writer("김인환")
				.build());
		
		List<Notice> noticeList = noticeRepository.findAll();
		
		Notice notice = noticeList.get(0);
		
		assertThat(notice.getNotTitle()).isEqualTo(notTitle);
		assertThat(notice.getNotContent()).isEqualTo(notContent);
		
		System.out.println(notice.getNotTitle());
	}

}
