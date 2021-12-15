package org.hustar.yogiedu.dto.academy;

import java.util.ArrayList;
import java.util.List;

import org.hustar.yogiedu.domain.academy.Academy;
import org.hustar.yogiedu.domain.lecture.Lecture;
import org.hustar.yogiedu.dto.lecture.LectureResponseDto;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class AcademyResponseDto {

	private Long acaIdx;

	private String acaAsnum;

	private String acaNm;

	private String atptOfcdcScCode;

	private String atptOfcdcScNm;

	private String adminDistName;

	private String estblDate;

	private String regDate;

	private String fieldName;

	// 교습과정명
	private String leCrseName;

	// 도로명우편번호
	private String faRdnzc;

	// 도로명주소
	private String faRdnma;

	// 도로명상세주소
	private String faRdnda;

	private List<LectureResponseDto> lectures = new ArrayList<LectureResponseDto>();

	public AcademyResponseDto(Academy entity) {
		this.acaIdx = entity.getAcaIdx();
		this.acaAsnum = entity.getAcaAsnum();
		this.acaNm = entity.getAcaNm();
		this.atptOfcdcScCode = entity.getAtptOfcdcScCode();
		this.atptOfcdcScNm = entity.getAtptOfcdcScNm();
		this.adminDistName = entity.getAdminDistName();
		this.estblDate = entity.getEstblDate();
		this.regDate = entity.getRegDate();
		this.fieldName = entity.getFieldName();
		this.leCrseName = entity.getLeCrseName();
		this.faRdnzc = entity.getFaRdnzc();
		this.faRdnma = entity.getFaRdnma();
		this.faRdnda = entity.getFaRdnda();
	}
	
	//
	public AcademyResponseDto(Academy entity, List<LectureResponseDto> lectures) {
		this.acaIdx = entity.getAcaIdx();
		this.acaAsnum = entity.getAcaAsnum();
		this.acaNm = entity.getAcaNm();
		this.atptOfcdcScCode = entity.getAtptOfcdcScCode();
		this.atptOfcdcScNm = entity.getAtptOfcdcScNm();
		this.adminDistName = entity.getAdminDistName();
		this.estblDate = entity.getEstblDate();
		this.regDate = entity.getRegDate();
		this.fieldName = entity.getFieldName();
		this.leCrseName = entity.getLeCrseName();
		this.faRdnzc = entity.getFaRdnzc();
		this.faRdnma = entity.getFaRdnma();
		this.faRdnda = entity.getFaRdnda();
		this.lectures = lectures;
	}

}
