package com.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.smhrd.repository.DeepRepositorty;
import com.smhrd.repository.MemberRepository;

@Controller
public class MypageController {

	@Autowired
	private MemberRepository mbmerrepo;
	
	@Autowired
	private DeepRepositorty deeprepo;
	

	
	

	
}
