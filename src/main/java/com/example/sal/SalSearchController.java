package com.example.sal;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Sal;
import com.example.sal.service.SalSearchService;

@Controller
@RequestMapping("/sal")
public class SalSearchController {
	
	static Log log = LogFactory.getLog(SalSearchController.class);
	
	@Autowired
	SalSearchService salSearchService;
	
	@GetMapping("/list")
	public String getList(Model model) {
		log.info("getList()");
		
		List<Sal> list = salSearchService.getListAll();
		model.addAttribute("sals", list);
//		request.setAttribute("sals", list);  Model model -> HttpServletRequset request
		
		return "sal/list";
	}
	
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model){
		log.info("getPage(" + pageNo + ")" );
		
		Map<String, Object> page = salSearchService.getPage(pageNo);
		model.addAttribute("page", page);
		
		return "sal/page";
	}
	
	@GetMapping("/item/{salno}")
	public String getItem(@PathVariable int salno, Model model) {
		log.info("getItem(" + salno + ")");
		
		Sal sal = salSearchService.getSalBySalno(salno, true);
		model.addAttribute("sal", sal);
		
		return "sal/item";
	}
}
