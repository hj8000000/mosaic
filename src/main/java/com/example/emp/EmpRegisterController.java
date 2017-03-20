package com.example.emp;

import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.emp.service.EmpRegisterService;
import com.example.emp.service.EmpSearchService;
import com.example.form.EmpForm;

@Controller
@RequestMapping("/emp")
public class EmpRegisterController {
	
	static Log log = LogFactory.getLog(EmpRegisterController.class);
	
	@Autowired
	EmpSearchService EmpSearchService;
	
	@Autowired
	EmpRegisterService empRegisterService;
	
	@GetMapping("/register")
	public String registerForm(EmpForm empForm) {
		log.info("registerForm()");
		
		return "/emp/registerForm";
	}
	
	@PostMapping("/register")
	public String register(@Valid EmpForm empForm, BindingResult errors) {
		log.info("register" + empForm + ")");
		System.out.println(empForm);
		
		if (errors.hasErrors()) {
			System.out.println(errors);
			return "emp/registerForm";
		}
		return "redirect:/emp/registerSuccess";
	}
	
	@GetMapping("/registerSuccess")
	public String registerSuccess() {
		return "emp/registerSuccess";
	}
	
}
