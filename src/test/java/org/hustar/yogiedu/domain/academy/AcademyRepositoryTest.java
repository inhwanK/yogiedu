package org.hustar.yogiedu.domain.academy;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
class AcademyRepositoryTest {

	@Autowired
	AcademyRepository academyRepository;
	
	@Test
	void test() {
		String acaAsNum = "123456";
		
		academyRepository.save(Academy.builder()
				.acaIdx("123458")
				.acaName("인환수학")
				.atptCode("T10")
				.atptName("제주특별자치도교육청")
				.build());
		
		List<Academy> academyList = academyRepository.findAll();
		
		Academy academy1 = academyList.get(0);
		assertThat(academy1.getAcaIdx()).isEqualTo(acaAsNum);
		
		for(int i = 0; i < academyList.size();i++) {
			Academy academy = academyList.get(i);
			System.out.println(academy.getAcaName()+","+academy.getAtptCode()+","+academy.getAtptName());
		}
		
	}

}
