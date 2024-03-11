package com.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.repository.MemberRepository;

@Controller
public class UploadController {
	
	@Autowired
	private MemberRepository repo;
	
	@RequestMapping("/record")
	public void goRecord() {
	}
	
	@RequestMapping("/upload")
	public void goUpload() {
	}
	
	
	
	
	
	
	
	
	
}
