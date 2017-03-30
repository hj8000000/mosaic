package com.example.country.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.example.domain.Country;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CountryUnregisterServiceTests {

	@Autowired
	CountrySearchService countrySearchService;
	
	@Autowired
	CountryUnregisterService countryUnregisterService;
	
	@Test
	public void test00_confirm() {
		System.out.println("countryUnregisterService = " + countryUnregisterService);
	}
	
	@Test
	public void test01_unregister() {
		Country country = countrySearchService.getCountryByCode("XXX");
		if (country == null) {
			System.out.println("해당 code가 없습니다.");
			return;
		}
		countryUnregisterService.unregister("XXX");
		
		System.out.println("code가 삭제되었습니다.");
	}
}
