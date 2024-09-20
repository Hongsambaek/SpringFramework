package kr.or.ddit.controller.test;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/test")
public class TestController2 {

	@RequestMapping(value="/ajaxTest.do", method = RequestMethod.GET)
	public String ajaxTest() {
		return "test/test02";
	}
	
	@ResponseBody
	@RequestMapping(value="/uploadFile", method = RequestMethod.POST, produces = "text/plain; charset=utf-8")
	public ResponseEntity<String> uploadFile(MultipartFile file){
		
		String fileName = file.getOriginalFilename();
		
		return new ResponseEntity<String>(fileName, HttpStatus.OK);
	}
	
}
