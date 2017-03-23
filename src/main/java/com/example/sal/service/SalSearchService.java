package com.example.sal.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.Sal;
import com.example.mapper.SalMapper;
import com.example.util.Pagination;

@Service
public class SalSearchService {
	static Log log = LogFactory.getLog(SalSearchService.class);
	
	@Autowired
	SalMapper salMapper;
	
	public List<Sal> getListAll() {
		log.info("getListAll()");
		return getListAll(false);
	}
	
	public List<Sal> getListAll(boolean withMember) {
		log.info("getListAll(" + withMember +")");
		
		List<Sal> list = null;
		if (withMember) 
			list = salMapper.selectAllWithMember();
		else
			list = salMapper.selectAll();
		
		return list;
	}
	
	public Map<String, Object> getPage(int pageNo) {
		
		return getPage(pageNo, false);
	}
	
	public Map<String, Object> getPage(int pageNo, boolean withMember) {
		Pagination paging = new Pagination();
		paging.setTotalItem(salMapper.selectTotalCount());
		paging.setPageNo(pageNo);
		
		List<Sal> list = null;
		if (withMember)
			list = salMapper.selectPageWithMember(paging);
		else
			list = salMapper.selectPage(paging);
		
		Map<String, Object> map = new HashMap<>();
		map.put("sals", list);
		map.put("paging", paging);
		
		return map;
	}
	
	public Sal getSalBySalno(int salno) {
		log.info("getCityById(" + salno + ")");		
		return getSalBySalno(salno, false);
	}
	
	public Sal getSalBySalno(int salno, boolean withMember) {
		log.info("getCityById(" + salno + ", " + withMember + ")");
		Sal sal = null;
		if (withMember)
			sal = salMapper.selectBySalnoWithMember(salno);
		else
			sal = salMapper.selectBySalno(salno);
		
		return sal;
	}
}
