package org.hustar.yogiedu.dto.academy;

import org.hustar.yogiedu.domain.academy.Academy;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Getter;

@Getter
public class AcademyResponseDto {

	private String acaAsnum;
	
	private String acaNm;
	
	private String atptOfcdcScCode;
	
	private String atptOfcdcScNm;
	
	private String adminDistName;
	
	private String estblDate;
	
	private String regDate;
	
	private String fieldName;
	
	// 교습계열명
	private String liOfdName;
	
	// 교습과정목록명
	private String leCrseListName;
	
	// 교습과정명
	private String leCrseName;
	
	// 도로명우편번호
	private String faRdnzc;
	
	// 도로명주소
	private String faRdnma;
	
	//도로명상세주소
	private String faRdnda;

	public AcademyResponseDto(Academy entity) {
		this.acaAsnum = entity.getAcaAsnum();
		this.acaNm = entity.getAcaNm();
		this.atptOfcdcScCode = entity.getAtptOfcdcScCode();
		this.atptOfcdcScNm = entity.getAtptOfcdcScNm();
		this.adminDistName = entity.getAtptOfcdcScNm();
		this.estblDate = entity.getEstblDate();
		this.regDate = entity.getRegDate();
		this.fieldName = entity.getFieldName();
		this.liOfdName = entity.getLiOfdName();
		this.leCrseListName = entity.getLeCrseListName();
		this.leCrseName = entity.getLeCrseName();
		this.faRdnzc = entity.getFaRdnzc();
		this.faRdnma = entity.getFaRdnma();
		this.faRdnda = entity.getFaRdnda();
	}
	
	
}
