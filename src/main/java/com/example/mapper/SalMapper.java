package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.domain.Sal;
import com.example.util.Pagination;

@Mapper
public interface SalMapper {
	
	/*
	 * Select
	 */
	@Select("select count(*) from sal")
	int selectTotalCount();
	
	@Select("select * from sal")
	List<Sal> selectAll();
	List<Sal> selectAllWithMember();
	
	@Select({
		"select * 						",
		"  from sal						",
		" order by salno				",
		"offset #{firstItem} - 1 rows	",
		" fetch next #{itemsPerPage} rows only"
	})
	List<Sal> selectPage(Pagination paging);
	List<Sal> selectPageWithMember(Pagination paging);
	
	@Select("select * from sal where salno=#{salno}")
	Sal selectBySalno(int salno);
	Sal selectBySalnoWithMember(int salno);
	
	/*
	 * Insert
	 */
	int insert(Sal sal);
	
	/*
	 * Update
	 */
	int updateBySalno(Sal sal);
	
	/*
	 * Delete
	 */
	@Delete("delete from sal where salno=#{salno}")
	int deleteBySalno(int salno);
	
}
