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
	@Column( length = 100  ) // 컬럼에 대한 상세한 설정을 @Column 으로 지정
	private String memId;
	
	// 비밀번호
	@Column(nullable = false) // < nullable을 false로 하면 not null이 되는 것
	private String memPw;

	// 닉네임
	@Column
	private String memNick;

	// 이메일
	@Column
	private String memEmail;
	
	// 생년월일
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date memBirthdate;
	
	// 성별
	private String memGender;
	
	// 다운로드 횟수
	@Column(columnDefinition = "NUMBER(10,0) DEFAULT 5")
	private int downloadchance = 5;

	// toString 오버라이딩 해야함!
	public String toString() {
		
		return "MEMBER";
	
}
	 @OneToMany(mappedBy = "member")
	 private List<Base_Voice> voices;
	    
	    // 기존 코드
	}
	