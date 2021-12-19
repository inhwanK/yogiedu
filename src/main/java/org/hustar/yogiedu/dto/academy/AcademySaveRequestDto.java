package org.hustar.yogiedu.dto.academy;

import org.hustar.yogiedu.domain.academy.Academy;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class AcademySaveRequestDto {

	@JsonProperty("ACA_ASNUM")
	private String acaAsnum;
	
	@JsonProperty("ACA_NM")
	private String acaNm;
	
	@JsonProperty("ATPT_OFCDC_SC_CODE")
	private String atptOfcdcScCode;
	
	@JsonProperty("ATPT_OFCDC_SC_NM")
	private String atptOfcdcScNm;
	
	@JsonProperty("ADMST_ZONE_NM")
	private String adminDistName;
	
	@JsonProperty("ESTBL_YMD")
	private String estblDate;
	
	@JsonProperty("REG_YMD")
	private String regDate;
	
	@JsonProperty("REALM_SC_NM")
	private String fieldName;
	
//	@JsonProperty("LE_OFD_NM") // 교습계열명
//	private String liOfdName;
//	
//	@JsonProperty("LE_CRSE_LIST_NM") // 교습과정목록명
//	private String leCrseListName;
	
	@JsonProperty("LE_CRSE_NM") // 교습과정명
	private String leCrseName;
	
	@JsonProperty("FA_RDNZC") // 도로명우편번호
	private String faRdnzc;
	
	@JsonProperty("FA_RDNMA") // 도로명주소
	private String faRdnma;
	
	@JsonProperty("FA_RDNDA") //도로명상세주소
	private String faRdnda;
	
	@JsonProperty("ACA_GRADE")
	private String acaGrade;
	
	@Builder
	public AcademySaveRequestDto(String acaAsnum, String acaNm, String atptOfcdcScCode, String atptOfcdcScNm,
			String adminDistName, String estblDate, String regDate, String fieldName, String leCrseName,
			String faRdnzc, String faRdnma, String faRdnda, String acaGrade) {
		super();
		this.acaAsnum = acaAsnum;
		this.acaNm = acaNm;
		this.atptOfcdcScCode = atptOfcdcScCode;
		this.atptOfcdcScNm = atptOfcdcScNm;
		this.adminDistName = adminDistName;
		this.estblDate = estblDate;
		this.regDate = regDate;
		this.fieldName = fieldName;
		this.leCrseName = leCrseName;
		this.faRdnzc = faRdnzc;
		this.faRdnma = faRdnma;
		this.faRdnda = faRdnda;
		this.acaGrade = acaGrade;
	}

	
	public Academy toEntity() {
		return Academy.builder()
				.acaAsnum(acaAsnum)
				.acaNm(acaNm)
				.atptOfcdcScCode(atptOfcdcScCode)
				.atptOfcdcScNm(atptOfcdcScNm)
				.adminDistName(adminDistName)
				.estblDate(estblDate)
				.regDate(regDate)
				.fieldName(fieldName)
				.leCrseName(leCrseName)
				.faRdnzc(faRdnzc)
				.faRdnma(faRdnma)
				.faRdnda(faRdnda)
				.acaGrade(acaGrade)
				.build();
	}
}
