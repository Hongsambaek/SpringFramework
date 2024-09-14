package kr.or.ddit.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MemberVO {
	private String memName;
	private String memId;
	private String memPw;
	private String memEmail;
	private String memPhone;
	private MultipartFile memFile;
	private List<MultipartFile> memFiles;
}
