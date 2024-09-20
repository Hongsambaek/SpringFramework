package kr.or.ddit.vo.test;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import kr.or.ddit.vo.Address;
import kr.or.ddit.vo.Card;
import lombok.Data;

@Data
public class TestMember {
	private String userId = "a001";
	private String userName = "hongkd";
	private String password = "1234";
	private int coin = 100;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateOfBirth;
	
	private String email;
	private String gender;
	private String hobby;
	private String[] hobbyArray;
	private List<String> hobbyList;
	private String cars;
	private String[] carArray;
	private List<String> carList;
	
	private boolean foreigner;
	private String foreignerResult;
	private String developer;
	private String nationality;
	
	private Address address;
	private List<Card> cardList;
	private String birthDay;
	private String introduction;
}
