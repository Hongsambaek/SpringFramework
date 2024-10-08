package kr.or.ddit.vo;

import java.util.Date;

import javax.validation.constraints.Future;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class Card {
	@NotBlank
	private String no;
	@Future
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull
	private Date validMonth;
}
