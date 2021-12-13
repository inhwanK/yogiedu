package org.hustar.yogiedu.domain.academy;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@Entity
@Table(name = "academy")
public class Academy {
	
	@Id
	@Column(name = "aca_asnum")
	private String acaIdx;

	@Column(name = "aca_nm")
	private String acaName;
	
	@Column(name = "atpt_ofcdc_sc_code")
	private String atptCode;
	
	@Column(name = "atpt_ofcdc_sc_nm")
	private String atptName;

	@Builder
	public Academy(String acaIdx, String acaName, String atptCode, String atptName) {
		super();
		this.acaIdx = acaIdx;
		this.acaName = acaName;
		this.atptCode = atptCode;
		this.atptName = atptName;
	} 
}
