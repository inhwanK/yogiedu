package org.hustar.yogiedu.dto;

import java.util.Date;

import org.hustar.yogiedu.domain.notice.Notice;

import lombok.Getter;

@Getter
public class NoticeResponseDto {
	private Long notIdx;
	private String notTitle;
	private String notContent;
	private Date regDate;
	private String writer;

	public NoticeResponseDto(Notice entity) {
		this.notIdx = entity.getNotIdx();
		this.notTitle = entity.getNotTitle();
		this.notContent = entity.getNotContent();
		this.regDate = entity.getRegDate();
		this.writer = entity.getWriter();
	}

}
