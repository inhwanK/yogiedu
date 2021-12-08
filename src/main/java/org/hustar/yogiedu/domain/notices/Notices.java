package org.hustar.yogiedu.domain.notices;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@Entity
public class Notices {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long notIdx;
	
	private String notTitle;
	
	private String notContent;
	
	private Date regDate;
	
	private String writer;
	
	@Builder
	public Notices(String notTitle, String notContent, Date regDate, String writer) {
		this.notTitle = notTitle;
		this.notContent = notContent;
		this.regDate = regDate;
		this.writer = writer;
	}
	
	
}
