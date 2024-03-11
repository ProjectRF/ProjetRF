package com.smhrd.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Entity
@Data
public class Member {
	
	@Id 
	@Column( length = 100  ) 
	private String memId;
	
	@Column(nullable = false) // 
	private String memPw;

	@Column
	private String memNick;

	@Column
	private String memEmail;
	
	@Column
	private String memGender;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date memBirthdate;
	
	@Column(columnDefinition = "NUMBER(10,0) DEFAULT 5")
	private int downloadchance = 5;

	public String toString() {
		
		return "MEMBER";
	
}
	 @OneToMany(mappedBy = "member")
	 private List<Base_Voice> voices;
	    
	    // 기존 코드
	}
	