package com.smhrd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.smhrd.entity.Base_Voice;

@Repository
public interface UploadRepository extends JpaRepository<Base_Voice, Long> {

	
}
