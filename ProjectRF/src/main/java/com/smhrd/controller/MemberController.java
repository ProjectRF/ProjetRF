package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.entity.Member;
import com.smhrd.repository.MemberRepository;

@Controller
public class MemberController {
	
	@Autowired
	private MemberRepository memberrepo;
	
	////////////////////////////////////////////////////////////////////////////
	
	// 메인으로 가세요
	@RequestMapping("/main")
	public void goMain() {
		// return "main";
	}

	// 회원가입으로 가세요
	@RequestMapping("/join")
	public void goJoin() {
	}
	
	// 로그인으로 가세요
	@RequestMapping("/login")
	public void goLogin() {
	}
	
	@RequestMapping("/changevoice")
	public void goChange() {
		
	}
	
	@RequestMapping("mypage")
	public void mypage() {
		
	}
	///확인용///	
	//////////////////////////////////////////////////////////////////////////
	
	
	// 회원가입 메소드
	@RequestMapping("/joinok")
	public String join(Member member) {
		
		memberrepo.save(member);
		
		return "login";
	}
	
	
	// 로그인 메소드
	@RequestMapping("/loginok") 
	public String login( Member member, HttpSession session) {
		
		Member result = memberrepo.findByMemIdAndMemPw(member.getMemId(), member.getMemPw());
		
		System.out.println(result.getMemEmail());
		
		if(result != null) {
			session.setAttribute("user", result);
		}
		return "main";
	}
	
	
	
	
	
	
	
	@RequestMapping("/test")
	public void goTest() {
		
	}
	
	
	
	
	
}
