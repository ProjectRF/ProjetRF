package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.hibernate.sql.Update;
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
	
	@RequestMapping("/main")
	public void goMain() {
	}

	@RequestMapping("/join")
	public void goJoin() {
	}
	
	@RequestMapping("/login")
	public void goLogin() {
	}
	
	@RequestMapping("/changevoice")
	public void goChange() {
		
	}
	
	@RequestMapping("/mypage")
	public void mypage() {
		
	}
	
	@RequestMapping("/editprofile")
	public void eidtprofile() {
		
	}
	
	@RequestMapping("/divide")
	public void divide() {
		
	}
	
	@RequestMapping("/Service")
	public void Service() {
		
	}
	
	@RequestMapping("/checkPW")
	public void checkPW() {
		
	}
	
	@RequestMapping("/FAQ")
	public void goFAQ() {
		
	}
	
	@RequestMapping("/divide2")
	public void divide2() {
		
	}
	
	@RequestMapping("/joinok")
	public String join(Member member) {
		
		System.out.println(member.getMemId());
		System.out.println(member.getMemPw());
		System.out.println(member.getMemNick());
		System.out.println(member.getMemEmail());
		System.out.println(member.getMemGender());
		System.out.println(member.getMemBirthdate());
		
		memberrepo.save(member);
		
		return "redirect:/login";
	}
	
	
	@RequestMapping("/loginok") 
	public String login( Member member, HttpSession session) {
		
		Member result = memberrepo.findByMemIdAndMemPw(member.getMemId(), member.getMemPw());
		if(result != null) {
			session.setAttribute("user", result);
			return "main";
		}else {
			return "login";
		}
		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		 session.invalidate();
		
		return "redirect:/main";
	}
	
	
	
	
	
	@RequestMapping("/okedit")
	public String okedit(Member member) {
	    Member result = memberrepo.findByMemId(member.getMemId());
	    
	    if (result != null) {
	        result.setMemPw(member.getMemPw());
	        result.setMemNick(member.getMemNick());
	        result.setMemEmail(member.getMemEmail());
	        
	        memberrepo.save(result);
	    }
	    
	    return "mypage";
	}

	@RequestMapping("/checkok") 
	public String checkok( Member member, HttpSession session) {
		
		Member result = memberrepo.findByMemIdAndMemPw(member.getMemId(), member.getMemPw());
		if(result != null) {
			return "editprofile";
		}else {
			return "redirect:/checkPW";
		}
		
	}
	
	
	
	
}
