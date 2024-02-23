package com.smhrd.entity;

import java.util.Date;
import javax.persistence.*;

import lombok.Data;

@Entity
@Data
public class Base_Voice {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "BaseIncrements")
    @SequenceGenerator(name = "BaseIncrements", sequenceName = "BaseIncrements", allocationSize = 1)
    @Column(insertable = false, updatable = false)
    private Long idx;
    
    @ManyToOne
    @JoinColumn(name = "memId")
    private Member member;
    
    @Column
    private String course;
    
    @Column(nullable = false)
    private Date indate = new Date(); // 생성 시점의 날짜/시간으로 초기화
}
