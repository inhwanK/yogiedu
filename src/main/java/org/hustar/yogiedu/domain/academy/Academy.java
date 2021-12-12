package org.hustar.yogiedu.domain.academy;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Entity
@NoArgsConstructor
@Table(name="academy")
public class Academy {
	
	@Id
	@Column(name = "ACA_ASNUM")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long acaIdx;
	
	@Column(name = "ACA_NM")
	private String acaName;
	
	@Column(name = "ATPT_OFCDC_SC_CODE")
	private String atptCode;
	
	@Column(name = "ATPT_OFCDC_SC_NM")
	private String atptName;
	
	@Column(name = "ADMST_ZONE_NM")
	private String admstZoneName;
	
	@Column(name = "ESTBL_YMD")
	private String estblDate;
	
	@Column(name = "REG_YMD")
	private String regDate;
	
	@Column(name = "REALM_SC_NM")
	private String realmName;
	
	@Column(name = "LE_OFD_NM")
	private String leNum;
	
	@Column(name = "LE_CRSE_LIST_NM")
	private String leListNum;
	
	@Column(name = "LE_CRSE_NM")
	private String leName;
	
	@Column(name = "FA_RDNZC")
	private int addressCode;
	
	@Column(name = "FA_RDNMA")
	private String address;
	
	@Column(name = "FA_RDNDA")
	private String addressDetail;

	@Builder
	public Academy(Long acaIdx, String acaName, String atptCode, String atptName, String admstZoneName,
			String estblDate, String regDate, String realmName, String leNum, String leListNum, String leName,
			int addressCode, String address, String addressDetail) {
		
		this.acaIdx = acaIdx;
		this.acaName = acaName;
		this.atptCode = atptCode;
		this.atptName = atptName;
		this.admstZoneName = admstZoneName;
		this.estblDate = estblDate;
		this.regDate = regDate;
		this.realmName = realmName;
		this.leNum = leNum;
		this.leListNum = leListNum;
		this.leName = leName;
		this.addressCode = addressCode;
		this.address = address;
		this.addressDetail = addressDetail;
	}
	
}
