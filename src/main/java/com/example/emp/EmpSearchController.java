package com.example.emp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Emp;
import com.example.emp.service.EmpSearchService;

@Controller
@RequestMapping("/emp")
public class EmpSearchController {
	
	@Autowired
	EmpSearchService empSearchService;
	
	@GetMapping("/list")
	public String getList(Model model) {
		
		List<Emp> list = empSearchService.getListAll();
		model.addAttribute("emps", list);
		
		return "emp/list";
	}
	
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model) {
		
		Map<String, Object> page = empSearchService.getPage(pageNo);
		model.addAttribute("page", page);
		
		return "emp/page";
	}
	
	@GetMapping("/item/{empno}")
	public String getItemByEmpno(@PathVariable int empno, Model model) {
		
		Emp emp = empSearchService.getEmpByEmpno(empno, true);
		model.addAttribute("emp",emp);
		
		return "emp/item";
	}
}
