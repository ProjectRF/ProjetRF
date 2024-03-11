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
	private Long idx; 
	
	@ManyToOne
	@JoinColumn(name = "memId")
	private Member member; 
	
	@Column
	private String course; 
	
	@Column
	private String URL;
	
	@Column(nullable = false)
    private Date indate = new Date(); 
	
	
}
