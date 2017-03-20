package com.example.country.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.example.form.CountryForm;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CountryRegisterServiceTests {
	
	@Autowired
	CountrySearchService countrySerchservice;
	
	@Autowired
	CountryRegisterService countryRegisterService;
	
	@Autowired
	Validator validator;
	
	@Test
	public void test00_confirmS_Service() {
		System.out.println("Sservice =" + countrySerchservice);
	}
	@Test
	public void test00_confirmR_Service() {
		System.out.println("Rservice =" + countryRegisterService);
	}
	@Test
	public void test00_confirmValidator() {
		System.out.println("Validator = " + validator);
	}
	
	@Test
	public void test01_register() {
		
		CountryForm countryForm = new CountryForm();
		BindingResult errors = new BeanPropertyBindingResult(countryForm, "countryForm");
		
		countryForm.setCode("XYZ");
		countryForm.setName("java");
		
		validator.validate(countryForm, errors);
		if (errors.hasErrors()) {
			System.out.println(errors);
			return;
		}
		countryRegisterService.register(countryForm, errors);
		if (errors.hasErrors()) {
			System.out.println(errors);
			return;
		}
		
		System.out.println("country = " + countrySerchservice.getCountryByCode(countryForm.getCode()));
	}
}
