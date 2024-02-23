package com.smhrd.DTO;

import java.util.Date;

import lombok.Data;

@Data
public class DeepResultDTO {

	private Long idx;
    
	private String memId;
    
    private String course; 
    
    private Date indate;
    
    private String URL;
    
 // 기본 생성자
    public DeepResultDTO() {
    }

    // 모든 필드를 초기화하는 생성자
    public DeepResultDTO(Long idx, String memId, String course, Date indate, String URL) {
        this.idx = idx;
        this.memId = memId;
        this.course = course;
        this.indate = indate;
        this.URL = URL;
    }

    // Getter와 Setter
    public Long getIdx() {
        return idx;
    }

    public void setIdx(Long idx) {
        this.idx = idx;
    }

    public String getMemId() {
        return memId;
    }

    public void setMemId(String memId) {
        this.memId = memId;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public Date getIndate() {
        return indate;
    }

    public void setIndate(Date indate) {
        this.indate = indate;
    }
    
    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }
   
    
    }
    