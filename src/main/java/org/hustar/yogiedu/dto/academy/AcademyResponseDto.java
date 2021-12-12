package org.hustar.yogiedu.dto.academy;

import org.hustar.yogiedu.domain.academy.Academy;

import lombok.Getter;

@Getter
public class AcademyResponseDto {

	private Long acaIdx;
	private String acaName;
	private String atptCode;
	private String atptName;
	private String admstZoneName;
	private String estblDate;
	private String regDate;
	private String realmName;
	private String leNum;
	private String leListNum;
	private String leName;
	private int addressCode;
	private String address;
	private String addressDetail;
	
	public AcademyResponseDto(Academy entity) {
		this.acaIdx = entity.getAcaIdx();
		this.acaName = entity.getAcaName();
		this.atptCode = entity.getAtptCode();
		this.atptName = entity.getAtptName();
		this.admstZoneName = entity.getAdmstZoneName();
		this.estblDate = entity.getEstblDate();
		this.regDate = entity.getRegDate();
		this.realmName = entity.getRealmName();
		this.leNum = entity.getLeName();
		this.leListNum = entity.getLeListNum();
		this.leName = entity.getLeName();
		this.addressCode = entity.getAddressCode();
		this.address = entity.getAddress();
		this.addressDetail = entity.getAddressDetail();
	}

}
