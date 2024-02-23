package com.smhrd.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.smhrd.DTO.DeepResultDTO;

import lombok.Data;

@Entity
@Data
public class Deep_Result {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "increments")  // auto_increment
	@SequenceGenerator(name = "increments", sequenceName = "increments", allocationSize = 1)
	@Column(insertable = false, updatable = false)
	private Long idx; // 인덱스 컬럼
	
	@ManyToOne
	@JoinColumn(name = "memId")
	private Member member; // 아이디/폴인키로 받기
	
	@Column
	private String course; // 경로 컬럼
	
	@Column
	private String URL;
	
	@Column(nullable = false)
    private Date indate = new Date(); // 생성 시점의 날짜/시간으로 초기화
	
	
}
