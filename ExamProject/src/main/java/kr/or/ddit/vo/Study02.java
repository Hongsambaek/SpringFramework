package kr.or.ddit.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Study02 {
	
	private String id;
	private String pw;
	private String name;
	private List<MultipartFile> files;
	private List<String> urls;
	
}
