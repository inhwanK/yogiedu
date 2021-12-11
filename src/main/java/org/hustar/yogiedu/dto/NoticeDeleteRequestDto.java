package org.hustar.yogiedu.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class NoticeDeleteRequestDto {

	private Long notIdx;

	@Builder
	public NoticeDeleteRequestDto(Long notIdx) {
		this.notIdx = notIdx;
	}
}
