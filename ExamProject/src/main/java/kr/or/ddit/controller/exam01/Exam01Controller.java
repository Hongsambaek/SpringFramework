package kr.or.ddit.controller.exam01;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value="/exam01")
public class Exam01Controller {

	// 동기방식의 요청 연습 페이지
	@RequestMapping(value="/exam01.do", method = RequestMethod.GET)
	public String exam01() {
		return "exam01/exam01";
	}
	
	@RequestMapping(value="/insert.do", method = RequestMethod.POST)
	public String exam01Insert(
			String memName, String memId, String memPw,
			Model model) {
		log.info("memName : " + memName);
		log.info("memId : " + memId);
		log.info("memPw : " + memPw);
		
		model.addAttribute("memName", memName);
		model.addAttribute("memId", memId);
		model.addAttribute("memPw", memPw);
		
		return "exam01/result";
	}
	
	// key=value
	@RequestMapping(value="/insert2.do", method = RequestMethod.POST)
	public String exam01Insert2(
			@RequestParam Map<String, String> param,
			Model model) {
		log.info("memName : " + param.get("memName"));
		log.info("memId : " + param.get("memId"));
		log.info("memPw : " + param.get("memPw"));
		
		// 데이터를 전달하는 방법
		// 1) 응용 
		model.addAttribute("map", param);
		
		// 2) 응용
		model.addAttribute("memName", param.get("memName"));
		model.addAttribute("memId", param.get("memId"));
		model.addAttribute("memPw", param.get("memPw"));
		
		return "exam01/result";
	}
	
	// key=value
	@RequestMapping(value="/insert3.do", method = RequestMethod.POST)
	public String exam01Insert3(MemberVO memberVO, Model model) {
		log.info("memName : " + memberVO.getMemName());
		log.info("memId : " + memberVO.getMemId());
		log.info("memPw : " + memberVO.getMemPw());
		
		// 데이터를 전달하는 방법
		model.addAttribute("memberVO", memberVO);
		
		return "exam01/result";
	}
	
	// key=value
	@RequestMapping(value="/insert4.do", method = RequestMethod.POST)
	public String exam01Insert4(MemberVO memberVO, Model model) {
		log.info("memName : " + memberVO.getMemName());
		log.info("memId : " + memberVO.getMemId());
		log.info("memPw : " + memberVO.getMemPw());
		
		MultipartFile file = memberVO.getMemFile();
		log.info("fileName : " + file.getOriginalFilename());
		log.info("fileSize : " + file.getSize());
		log.info("fileContentType : " + file.getContentType());
		
		// 데이터를 전달하는 방법
		model.addAttribute("memberVO", memberVO);
		
		return "exam01/result";
	}
	
	
	
}










