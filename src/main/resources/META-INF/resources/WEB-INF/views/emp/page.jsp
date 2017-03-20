<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>page.jsp</title>

<!-- code_assist -->
<c:if test="false">
<link rel="stylesheet" href="../code_assist/animate.css">
<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<style type="text/css">
	a:HOVER {
		text-decoration: none;	
	}
	a {
		color: black;
	}
	header {
		margin: 50px 10px;
	}
	.text-center {
		margin : 30px auto;
	}
</style>

</head>
<body>
<c:set var="emps" value="${page.emps}"/>
<c:set var="paging" value="${page.paging}"/>

<h1>Emp Page pageNo=${paging.pageNo}</h1>

<div class="text-center table-responsive">
	<table class="table">
		<tr class="info">
			<td>No.</td>
			<td>empno</td>
			<td>ename</td>
			<td>job</td>
			<td>mgr</td>
			<td>hiredate</td>
			<td>sal</td>
			<td>comm</td>
			<td>deptno</td>
		</tr>
	<c:forEach var="emp" items="${emps}" varStatus="status">
		<tr>
			<td>${status.index + 1}</td>
			<td>${emp.empno}</td> 
			<td><a href="/emp/item/${emp.empno}?pageNo=${paging.pageNo}">${emp.ename}</a></td> 
			<td>${emp.job}</td>
			<td>${emp.mgr}</td> 
			<td>${emp.hiredate}</td> 
			<td>${emp.sal}</td>
			<td>${emp.comm}</td> 
			<td>${emp.deptno}</td>
		<tr>
		</c:forEach>
	</table>
</div>

<div class="text-center">
	<a href="/emp/page/1">처음으로</a>

	<c:choose>
	<c:when test="${paging.firstGroup == true}">
		<a href="/emp/page/${paging.firstPage}" class="alert alert-warning">&laquo;</a>
	</c:when>
	<c:when test="${paging.firstGroup == false}">
		<a href="/emp/page/${paging.firstPage - 1}" class="alert alert-warning">&laquo;</a>
	</c:when>
	</c:choose>
	<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
		<a href="/emp/page/${i}">${i}</a>
	</c:forEach>
	
	<c:choose>
	<c:when test="${paging.lastGroup == true}">
		<a href="/emp/page/${paging.lastPage}"class="alert alert-warning">&raquo;</a>
	</c:when>
	<c:when test="${paging.lastGroup == false}">
		<a href="/emp/page/${paging.lastPage + 1}"class="alert alert-warning">&raquo;</a>
	</c:when>
	</c:choose>

	<a href="/emp/page/${paging.totalPage}">끝으로</a>
</div>
</body>
</html>