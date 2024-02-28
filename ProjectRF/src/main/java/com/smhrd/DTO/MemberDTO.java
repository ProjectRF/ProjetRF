package com.smhrd.DTO;

import java.util.Date;

import lombok.Data;

@Data
public class MemberDTO {

	private String memId;
	
	private String memPw;

	private String memNick;

	private String memEmail;
	
	private Date memBirthdate;
	
	private String memGender;
	
}
