package org.hustar.yogiedu.domain.notices;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="notice")
public class Notices {

	public Notices() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Notices(Long notIdx, String notTitle, String notContent, Date regDate, String writer) {
		super();
		this.notIdx = notIdx;
		this.notTitle = notTitle;
		this.notContent = notContent;
		this.regDate = regDate;
		this.writer = writer;
	}

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
