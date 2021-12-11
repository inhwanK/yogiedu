package org.hustar.yogiedu.dto.notice;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class NoticeUpdateRequestDto {
	
	private String notTitle;
	private String notContent;
	
	@Builder
	public NoticeUpdateRequestDto(String notTitle, String notContent) {
		super();
		this.notTitle = notTitle;
		this.notContent = notContent;
	}
	
}
