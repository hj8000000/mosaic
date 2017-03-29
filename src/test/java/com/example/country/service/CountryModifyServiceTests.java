package com.example.country.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.example.domain.Country;
import com.example.form.CountryForm;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CountryModifyServiceTests {

	@Autowired
	CountrySearchService countrySearchService;
	
	@Autowired
	CountryModifyService countryModifyService;
	
	@Autowired
	Validator validator;
	
	@Test
	public void test00_confirm() {
		System.out.println("countrySearchService = " + countrySearchService);
		System.out.println("countryModifyService = " + countryModifyService);
		System.out.println("validator = " + validator);
	}
	
	@Test
	public void test01_modify() {
		Country country = countrySearchService.getCountryByCode("RRR");
		CountryForm countryForm = new CountryForm();
		countryForm.setCountry(country);
		BindingResult errors = new BeanPropertyBindingResult(countryForm, "countryForm");
		
		countryForm.setName("aAbcd");
		
		validator.validate(countryForm, errors);
		if (errors.hasErrors()) {
			System.out.println("errors = " + errors);
			return;
		}
		countryModifyService.modify(countryForm, errors);
		if (errors.hasErrors()) {
			System.out.println("errors = " + errors);
			return;
		}
		
		System.out.println("country = " + countrySearchService.getCountryByCode(countryForm.getCode()));
	}
}
