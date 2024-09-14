package kr.or.ddit.controller.exam02;

import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/exam02")
public class Exam02Controller {
	
	// 비동기방식의 요청 연습 페이지
	@RequestMapping(value="/exam02.do", method = RequestMethod.GET)
	public String exam02() {
		return "exam02/exam02";
	}
	
	// 비동기 요청시, 실행할 Target
	// 요구사항 : 비동기 통신을 이용하여 총 3개의 데이터를 전송받는다.
	//         전송 받은 데이터는 컬렉션을 이용하여 받아주세요.
	//         받은 데이터는 콘솔에 모두 출력해주세요.
	//         받은 데이터들 중, 아이디의 값을 정상적으로 받아왔다면 'SUCCESS-아이디값' 으로 가공 후 응답으로 내보내주세요.
	
	// 비동기 통신을 이용한 방법 중, 첫번째 : @ResponseBody / 두번째 : ResponseEntity
	// 
	
	// 데이터를 리턴해주어야 한다. 즉, ResponseEntity객체의 제네릭타입으로 설정되어 있는 타입이 곧 응답으로 내보낼 데이터 타입이다.
	@RequestMapping(value="/insert/{type}")
	public ResponseEntity<String> examInsert(
			@PathVariable int type, @RequestBody Map<String, String> map){
		log.info("type : " + type);
		log.info("name : " + map.get("memName"));
		log.info("id : " + map.get("memId"));
		log.info("pw : " + map.get("memPw"));
		
		return new ResponseEntity<String>("SUCCESS-" + map.get("memId"), HttpStatus.OK);
	}
	
	@ResponseBody
	@RequestMapping(value="/insert2/{type}")
	public ResponseEntity<String> examInsert2(
			@PathVariable int type, @RequestBody MemberVO memberVO){
		log.info("type : " + type);
		log.info("name : " + memberVO.getMemName());
		log.info("id : " + memberVO.getMemId());
		log.info("pw : " + memberVO.getMemPw());
		
		return new ResponseEntity<String>("SUCCESS-" + memberVO.getMemId(), HttpStatus.OK);
	}
	
	@ResponseBody
	@RequestMapping(value="/insert3/{type}")
	public ResponseEntity<String> examInsert3(
			@PathVariable int type, MemberVO memberVO){
		log.info("type : " + type);
		log.info("name : " + memberVO.getMemName());
		log.info("id : " + memberVO.getMemId());
		log.info("pw : " + memberVO.getMemPw());
		log.info("file : " + memberVO.getMemFile().getOriginalFilename());
		
		return new ResponseEntity<String>("SUCCESS-" + memberVO.getMemId(), HttpStatus.OK);
	}
	
	
}















