package com.example.dept.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.example.form.DeptForm;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DeptRegisterServiceTests {
	
	@Autowired
	DeptSearchService deptSearchService;
	
	@Autowired
	DeptRegisterService deptRegisterService;
	
	@Autowired
	Validator validator;
	
	@Test
	public void test00_confirmS_Service() {
		System.out.println("Sservice = " + deptSearchService);
	}
	@Test
	public void test00_confirmR_Service() {
		System.out.println("Rservice = " + deptRegisterService);
	}
	@Test
	public void test00_confirmValidator() {
		System.out.println("Validator = " + validator);
	}
	
	@Test
	public void test01_register() {
		
		DeptForm deptForm = new DeptForm();
		BindingResult errors = new BeanPropertyBindingResult(deptForm, "deptForm");
		
//		deptForm.setDeptno(50);
//		deptForm.setDname("개발부");
		
		
		validator.validate(deptForm, errors);
		if (errors.hasErrors()) {
			System.out.println(errors);
			return;
		}
		deptRegisterService.register(deptForm, errors);
		if (errors.hasErrors()) {
			System.out.println(errors);
			return;
		}
		
		System.out.println("dept = " + deptSearchService.getDeptByDeptno(deptForm.getDeptno()));
	}
}
