package org.hustar.yogiedu.controller;

import java.util.ArrayList;
import java.util.List;

import org.hustar.yogiedu.dto.academy.AcademyResponseDto;
import org.hustar.yogiedu.dto.academy.AcademySaveRequestDto;
import org.hustar.yogiedu.service.AcademyService;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api")
public class RestAcademyController {

	private final AcademyService academyService;

	@GetMapping("/academyList")
	public List<AcademyResponseDto> getAcademyList() {
		return academyService.findAll();
	}

//	학원 지역구별로 검색.
	@GetMapping("/academyList/{adminDistName}")
	public List<AcademyResponseDto> getAcademyListByAdminDistName(@PathVariable String adminDistName){
		return academyService.findByAdminDistName(adminDistName);
	}
	
//	학원 수업 분야와 지역구에 따른 검색.
	@GetMapping("/academyList/{adminDistName}/{leCrseName}")
	public List<AcademyResponseDto> getAcademyListByLeCrseName(@PathVariable(value = "adminDistName") String adminDistName,
			@PathVariable(value = "leCrseName") String leCrseName){
		return academyService.findByAdminDistNameAndLeCrseNameLike(adminDistName, leCrseName);
	}
	
	@GetMapping("/academy")
	public AcademyResponseDto getAcademy(Long acaIdx) {
		return academyService.findById(acaIdx);
	}

	@PostMapping("/academy")
	public Long regAcademy(@RequestBody AcademySaveRequestDto requestDto) {
		return academyService.save(requestDto);
	}

//	데이터 일괄 삽입용 컨트롤러. 실제론 잘 안쓰임.
	@PostMapping("/academyList")
	public List<Long> regAcademyList(@RequestBody List<AcademySaveRequestDto> requestDtos) {

		AcademySaveRequestDto requestDto;
		List<Long> acaIdxList = new ArrayList<Long>();

		for (int i = 0; i < requestDtos.size(); i++) {
			requestDto = requestDtos.get(i);
			acaIdxList.add(academyService.save(requestDto));
		}
		return acaIdxList;
	}

	@DeleteMapping("/academy")
	public Long deleteAcademyById(Long acaIdx) {
		return academyService.deleteById(acaIdx);
	}
}
