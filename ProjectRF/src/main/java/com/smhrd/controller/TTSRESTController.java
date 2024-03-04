package com.smhrd.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.DTO.DeepResultDTO;
import com.smhrd.entity.Base_Voice;
import com.smhrd.entity.Deep_Result;
import com.smhrd.entity.Member;
import com.smhrd.repository.DeepRepositorty;
import com.smhrd.repository.MemberRepository;
import com.smhrd.repository.UploadRepository;

import org.springframework.ui.Model;

@RestController
public class TTSRESTController {
	
	@Autowired
	private UploadRepository uploadRepo;
	
	 @Autowired
	 private MemberRepository memberRepo;
	 
	 @Autowired
	 private DeepRepositorty deepRepo;
	
	
	 ///////////////////////////////마이페이지 db불러오기///////////////////////////////////////////
	 
	 public DeepResultDTO convertEntityToDTO(Deep_Result deepResult) {
		    DeepResultDTO dto = new DeepResultDTO();
		    dto.setIdx(deepResult.getIdx());
		    dto.setMemId(deepResult.getMember().getMemId()); // Member의 ID
		    dto.setCourse(deepResult.getCourse());
		    dto.setIndate(deepResult.getIndate());
		    dto.setURL(deepResult.getURL());
		    return dto;
		}
	 
	 ////////////////////////////////////////////////////////////////////////////////////////
	 
	 
	 
	 
	 
	 
	 @RequestMapping("/myvoice")
	 public void myvoice() {
		 
	 }
	 
	 
	 
	 
	 
	 
    @RequestMapping("/change")
    public String change(@RequestParam("result") String result) {
        // 'result' 파라미터 값을 콘솔에 출력
    	String zero = result.split("/")[0]; // >> 프로젝트명
    	String first = result.split("/")[1]; // 회원id
    	
    	
    	Member member = memberRepo.findById(first).orElseThrow(() -> new RuntimeException("Member not found"));
    	Base_Voice voice = new Base_Voice();
        voice.setMember(member); // Member 설정
        voice.setCourse(zero); // course 설정 등
        
         
         uploadRepo.save(voice); // Base_Voice 저장
    	
    	
        return "change";
    }
    
//    @RequestMapping("/dividechange")
//    public String dividechange(
//    		@RequestParam("course")String course, 
//    		@RequestParam("nickname")String nickname, 
//    		@RequestParam("project")String project) {
//    	Member member = memberRepo.findById(nickname).orElseThrow(() -> new RuntimeException("Member not found"));
//    	Base_Voice voice = new Base_Voice();
//    	
//    	voice.setCourse(project);
//    	voice.setMember(member);
//    	
//    	uploadRepo.save(voice);
//    	
//    	return "divide";
//    }
    
    
    
    @RequestMapping("/ending")
    public String ending(@RequestParam("nickname") String nickname, @RequestParam("sendtext") String sendtext, @RequestParam("musicUrl") String musicUrl) {
    	
    	System.out.println("받은 nickname값" + nickname);
    	System.out.println("받은 sendtext값" + sendtext);
    	
    	Member member = memberRepo.findById(nickname).orElseThrow(() -> new RuntimeException("Member not found"));
    	Deep_Result deepresult = new Deep_Result();
    	deepresult.setMember(member);
    	deepresult.setCourse(sendtext);
    	deepresult.setURL(musicUrl);
    	deepRepo.save(deepresult);
    	
    	return "main";
    	
    }
    
    
    // 마이페이지 딥결과 리스트
    @RequestMapping("/havevoice")
    public List<DeepResultDTO> myvoicelist(@RequestParam("userid") String userid) {
        List<Deep_Result> deepResults = deepRepo.findByMember_MemId(userid);
        List<DeepResultDTO> dtoList = new ArrayList<>();
        for (Deep_Result deepResult : deepResults) {
            DeepResultDTO dto = convertEntityToDTO(deepResult);
            dtoList.add(dto);
        }
        System.out.println(dtoList);
        return dtoList;
    }
    
    // 다운로드 횟수 감소 메소드
    @RequestMapping("/downfile")
    public String downfile(Member member) {
    	
    	// ajax요청에 값을 담아서 requestparam으로 받아서 아이디만 받아서 비교해서 ending 메소드랑 비슷하게
    	
    	
    	
    	return "mypage";
    }
    

    
    
    
}