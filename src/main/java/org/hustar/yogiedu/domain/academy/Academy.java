package org.hustar.yogiedu.domain.academy;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale.Category;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hustar.yogiedu.domain.lecture.Lecture;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.Setter;

@Entity
@Getter
@NoArgsConstructor
@Table(name = "academy")
public class Academy {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long acaIdx;
	
	@Column(name = "ACA_ASNUM")
	private String acaAsnum;
	
	@Column(name = "ACA_NM")
	private String acaNm;
	
	@Column(name = "ATPT_OFCDC_SC_CODE")
	private String atptOfcdcScCode;
	
	@Column(name = "ATPT_OFCDC_SC_NM")
	private String atptOfcdcScNm;
	
	@Column(name = "ADMST_ZONE_NM")
	private String adminDistName;
	
	@Column(name = "ESTBL_YMD")
	private String estblDate;
	
	@Column(name = "REG_YMD")
	private String regDate;
	
	@Column(name = "REALM_SC_NM")
	private String fieldName;

	@Column(name = "LE_CRSE_NM") // 교습과정명
	private String leCrseName;
	
	@Column(name = "FA_RDNZC") // 도로명우편번호
	private String faRdnzc;
	
	@Column(name = "FA_RDNMA") // 도로명주소
	private String faRdnma;
	
	@Column(name = "FA_RDNDA") //도로명상세주소
	private String faRdnda;
	
	@Column(name = "ACA_GRADE")
	private String acaGrade;
	
	
	@Builder
	public Academy(Long acaIdx, String acaAsnum, String acaNm, String atptOfcdcScCode, String atptOfcdcScNm,
			String adminDistName, String estblDate, String regDate, String fieldName, String leCrseName, String faRdnzc,
			String faRdnma, String faRdnda, String acaGrade) {
		super();
		this.acaIdx = acaIdx;
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
}
