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
	.text-center {
		margin : 30px auto;
	}
</style>

</head>
<body>
<c:set var="depts" value="${page.depts}"/>
<c:set var="paging" value="${page.paging}"/>

<h1>Dept Page List PageNo ? ${paging.pageNo}</h1>
<div class="text-center table-responsive">
	<table class="table">
		<tr class="danger">
			<td>deptno</td>
			<td>dname</td>
			<td>loc</td>
		</tr>
		<c:forEach var="dept" items="${depts}" varStatus="status">
		<tr>
			<td>${dept.deptno}</td>
			<td>${dept.dname}</td> 
			<td>${dept.loc}</td> 
		</tr>
		</c:forEach>
	</table>
</div>

<div class="text-center">
	<a href="/dept/page/1">처음으로</a>
	
	<c:choose>
	<c:when test="${paging.firstGroup == true}">
		<a href="/dept/page/${paging.firstPage}" class="alert alert-info">&laquo;</a>
	</c:when>
	<c:when test="${paging.firstGroup == false}">
		<a href="/dept/page/${paging.firstPage - 1}" class="alert alert-info">&laquo;</a>
	</c:when>
	</c:choose>
	
	<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
		<a href="/dept/page/${i}" class="xxx btn btn-group-sm active">${i}</a>
	</c:forEach>
	
	<c:choose>
	<c:when test="${paging.lastGroup == true}">
		<a href="/dept/page/${paging.lastPage}" class="alert alert-success">&raquo;</a>
	</c:when>
	<c:when test="${paging.lastGroup == false}">
		<a href="/dept/page/${paging.lastPage + 1}" class="alert alert-success">&raquo;</a>
	</c:when>
	</c:choose>
	
	<a href="/dept/page/${paging.totalPage}">끝으로</a>
</div>

</body>
</html>