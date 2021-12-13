package org.hustar.yogiedu.domain.notice;



import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Entity
@NoArgsConstructor
@Table(name="notice")
public class Notice {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long notIdx;
	
	private String notTitle;
	
	private String notContent;
	
	private Date regDate;
	
	private String writer;
	
	@Builder
	public Notice(String notTitle, String notContent, Date regDate, String writer) {
		this.notTitle = notTitle;
		this.notContent = notContent;
		this.regDate = regDate;
		this.writer = writer;
	}
	
	public void update(String notTitle, String notContent) {
		this.notTitle = notTitle;
		this.notContent = notContent;
	}
	
	
}
