package org.hustar.yogiedu.dto;

import java.util.Date;

import org.hustar.yogiedu.domain.notice.Notice;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class NoticeSaveRequestDto {

	private String notTitle;
	private String notContent;
	private Date regDate;
	private String writer;
	
	@Builder
	public NoticeSaveRequestDto(String notTitle, String notContent, Date regDate, String writer) {
		super();
		this.notTitle = notTitle;
		this.notContent = notContent;
		this.regDate = regDate;
		this.writer = writer;
	}	
	
	public Notice toEntity() {
		return Notice.builder()
				.notTitle(notTitle)
				.notContent(notContent)
				.regDate(regDate)
				.writer(writer)
				.build();
	}

	
}
