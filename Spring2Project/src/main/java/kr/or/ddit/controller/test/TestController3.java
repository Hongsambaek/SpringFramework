package kr.or.ddit.controller.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/test03")
public class TestController3 {

	@RequestMapping(value="/test03.do", method = RequestMethod.GET)
	public String test03() {
		return "test/test03";
	}
	
}
