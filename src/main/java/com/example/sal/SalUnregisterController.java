package com.example.sal;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.sal.service.SalSearchService;
import com.example.sal.service.SalUnregisterService;

@Controller       
@RequestMapping("/sal")
public class SalUnregisterController {

	static Log log = LogFactory.getLog(SalUnregisterController.class);
	
	@Autowired
	SalSearchService salSearchService;
	
	@Autowired
	SalUnregisterService salUnregisterService;
	
	@GetMapping("/unregister/{salno}")
	public String unregisterForm(@PathVariable int salno, Model model) {
		log.info("unregister(" + salno + ")");
		
		return "sal/unregisterForm";
	}
}
