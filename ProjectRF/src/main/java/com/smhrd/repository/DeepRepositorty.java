package com.smhrd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.smhrd.entity.Deep_Result;
import com.smhrd.entity.Member;

@Repository
public interface DeepRepositorty extends JpaRepository<Deep_Result, Long> {

	List<Deep_Result> findByMember_MemId(String memId);
	
}
