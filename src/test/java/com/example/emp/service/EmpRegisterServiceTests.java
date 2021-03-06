package com.example.emp.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.example.form.EmpForm;

@RunWith(SpringRunner.class)
@SpringBootTest
public class EmpRegisterServiceTests {
	
	@Autowired
	EmpSearchService empSearchService;
	
	@Autowired
	EmpRegisterService empRegisterService;
	
	@Autowired
	Validator validator;
	
	@Test
	public void test00_confirmS_Service() {
		System.out.println("Sservice = " + empSearchService);
	}
	@Test
	public void test00_confirmR_Service() {
		System.out.println("Rservice = " + empRegisterService);
	}
	@Test
	public void test00_confirmValidator() {
		System.out.println("Validator = " + validator);
	}
	
	@Test
	public void test01_register() {
		EmpForm empForm = new EmpForm();
		BindingResult errors = new BeanPropertyBindingResult(empForm, "empForm");
		
//		empForm.setDeptno(50);
//		empForm.setEname("SCSC");
		
		validator.validate(empForm, errors);
		if (errors.hasErrors()) {
			System.out.println("errors = " + errors);
			return;
		}
		empRegisterService.register(empForm, errors);
		if (errors.hasErrors()) {
			System.out.println("errors = " + errors);
			return;
		}
		
		System.out.println("emp = " + empSearchService.getEmpByEmpno(empForm.getEmpno()));
	}
}
