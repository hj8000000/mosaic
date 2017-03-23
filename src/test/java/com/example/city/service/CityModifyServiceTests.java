package com.example.city.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.example.domain.City;
import com.example.form.CityForm;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CityModifyServiceTests {
	
	@Autowired
	CitySearchService citySerchservice;
	
	@Autowired
	CityModifyService cityModifyService;
	
	@Autowired
	Validator validator;
	
	@Test
	public void test00_confirmS_Service() {
		System.out.println("Sservice = " + citySerchservice);
	}
	@Test
	public void test00_confirmM_Service() {
		System.out.println("Mservice = " + cityModifyService);
	}
	@Test
	public void test00_confirmValidator() {
		System.out.println("Validator = " + validator);
	}
	
	@Test
	public void test01_modify() {
		City city = citySerchservice.getCityById(4120);
		CityForm cityForm = new CityForm();
		cityForm.setCity(city);
		BindingResult errors = new BeanPropertyBindingResult(cityForm, "cityForm");
		
		cityForm.setCountryCode("USA");
		
		validator.validate(cityForm, errors);
		if (errors.hasErrors()) {
			System.out.println("errors = " + errors);
			return;
		}
		
		cityModifyService.modify(cityForm, errors);
		if (errors.hasErrors()) {
			System.out.println("errors = " + errors);
			return;
		}
		
		System.out.println("city = " + citySerchservice.getCityById(cityForm.getId()));
	}
	
}
