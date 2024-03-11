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
	
	
	 
	 public DeepResultDTO convertEntityToDTO(Deep_Result deepResult) {
		    DeepResultDTO dto = new DeepResultDTO();
		    dto.setIdx(deepResult.getIdx());
		    dto.setMemId(deepResult.getMember().getMemId()); 
		    dto.setCourse(deepResult.getCourse());
		    dto.setIndate(deepResult.getIndate());
		    dto.setURL(deepResult.getURL());
		    return dto;
		}
	 
	 
	 
	 @RequestMapping("/myvoice")
	 public void myvoice() {
		 
	 }
	 
	 
	 
    @RequestMapping("/change")
    public String change(@RequestParam("result") String result) {
    	String zero = result.split("/")[0]; 
    	String first = result.split("/")[1]; 
    	
    	
    	Member member = memberRepo.findById(first).orElseThrow(() -> new RuntimeException("Member not found"));
    	Base_Voice voice = new Base_Voice();
        voice.setMember(member); 
        voice.setCourse(zero); 
        
         
         uploadRepo.save(voice); 
    	
    	
        return "change";
    }
    
    
    @RequestMapping("/ending")
    public String ending(@RequestParam("nickname") String nickname, @RequestParam("sendtext") String sendtext, @RequestParam("musicUrl") String musicUrl) {
    	
    	Member member = memberRepo.findById(nickname).orElseThrow(() -> new RuntimeException("Member not found"));
    	Deep_Result deepresult = new Deep_Result();
    	deepresult.setMember(member);
    	deepresult.setCourse(sendtext);
    	deepresult.setURL(musicUrl);
    	deepRepo.save(deepresult);
    	
    	return "main";
    	
    }
    
    
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
    
    
    
}