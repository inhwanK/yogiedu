package org.hustar.yogiedu.dto.academy;

import org.hustar.yogiedu.domain.academy.Academy;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class AcademySaveRepositoryDto {
	
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
	
	@Builder
	public AcademySaveRepositoryDto(Long acaIdx, String acaName, String atptCode, String atptName, String admstZoneName,
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
	
	public Academy toEntity() {
		return Academy.builder()
				.acaIdx(acaIdx)
				.acaName(acaName)
				.atptCode(atptCode)
				.atptName(atptName)
				.admstZoneName(admstZoneName)
				.estblDate(estblDate)
				.regDate(regDate)
				.realmName(realmName)
				.leNum(leNum)
				.leListNum(leListNum)
				.leName(leName)
				.addressCode(addressCode)
				.address(address)
				.addressDetail(addressDetail)
				.build();
	}
}
