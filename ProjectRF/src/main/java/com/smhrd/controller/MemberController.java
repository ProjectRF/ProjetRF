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
	
	///확인용///	
	//////////////////////////////////////////////////////////////////////////
	
	
	// 회원가입 메소드
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
	
	
	// 로그인 메소드
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
	    // memId를 사용하여 기존 Member 엔티티를 찾습니다.
	    Member result = memberrepo.findByMemId(member.getMemId());
	    
	    if (result != null) {
	        // 필요한 정보를 업데이트합니다.
	        result.setMemPw(member.getMemPw());
	        result.setMemNick(member.getMemNick());
	        result.setMemEmail(member.getMemEmail());
	        
	        // 업데이트된 정보를 저장합니다.
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
