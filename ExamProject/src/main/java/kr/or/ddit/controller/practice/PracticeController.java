package kr.or.ddit.controller.practice;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/practice")
public class PracticeController {

	// 테스트 페이지
	@RequestMapping(value="/test01.do", method = RequestMethod.GET)
	public String practice() {
		return "practice/test01";
	}
	
	// 비동기 테스트 페이지
	@RequestMapping(value="/test02.do", method = RequestMethod.GET)
	public String practice2() {
		return "practice/test02";
	}
	
	@ResponseBody
	@RequestMapping(value="/insert2.do", method = RequestMethod.POST)
	public ResponseEntity<String> insert2(
			MemberVO memberVO){
		log.info("name : " + memberVO.getMemName());
		
		List<MultipartFile> files = memberVO.getMemFiles();
		for(int i = 0; i < files.size(); i++) {
			log.info("fileName : " + files.get(i).getOriginalFilename());
			log.info("size : " + files.get(i).getSize());
			log.info("contentType : " + files.get(i).getContentType());
			log.info("----------------------------------------------");
		}
		return ResponseEntity.ok("SUCCESS UPLOAD");
	}
	
}










