package com.example.sal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.Sal;
import com.example.mapper.MemberMapper;
import com.example.mapper.SalMapper;

@Service
public class SalRegisterService {
	
	@Autowired
	SalMapper salMapper;
	
	@Autowired
	MemberMapper memberMapper;
	
	public void register(Sal sal, BindingResult errors) {
		
	}
}
