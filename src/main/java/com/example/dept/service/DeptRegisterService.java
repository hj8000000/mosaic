package com.example.dept.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.Dept;
import com.example.mapper.DeptMapper;

@Service
public class DeptRegisterService {
	
	@Autowired
	DeptMapper deptMapper;
	
	public void register(Dept dept, BindingResult errors) {
		
		Dept confirm = deptMapper.selectByDeptno(dept.getDeptno());
		if (confirm != null)
			errors.reject("InvalidDeptNo", "중복된 DeptNo가 존재합니다.");
		if (!errors.hasErrors())
			deptMapper.insert(dept);
	}
}
