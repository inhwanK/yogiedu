package org.hustar.yogiedu.dto;

import org.hustar.yogiedu.domain.notice.Notice;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class NoticeSaveRequestDto {

	private String notTitle;
	private String notContent;
	private String writer;
	
	@Builder
	public NoticeSaveRequestDto(String notTitle, String notContent, String writer) {
		this.notTitle = notTitle;
		this.notContent = notContent;
		this.writer = writer;
	}
	
	public Notice toEntity() {
		return Notice.builder()
				.notTitle(notTitle)
				.notContent(notContent)
				.writer(writer)
				.build();
	}
}
