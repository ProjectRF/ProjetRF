package com.smhrd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.smhrd.entity.Member;


@Repository
public interface MemberRepository extends JpaRepository<Member, String > {

	public Member findByMemIdAndMemPw(String memId, String memPw);
	
	public Member findByMemId(String memId); 
}
