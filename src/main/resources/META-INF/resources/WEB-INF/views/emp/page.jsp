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

</head>
<body>
<c:set var="emps" value="${page.emps}"/>
<c:set var="paging" value="${page.paging}"/>

<h1>Emp Page pageNo=${paging.pageNo}</h1>
<ol class="list-group">
	<c:forEach var="emp" items="${emps}">
		<li>${emp.empno}, <a href="/emp/item/${emp.empno}?pageNo=${paging.pageNo}">${emp.ename}</a>, ${emp.job}, ${emp.mgr}, ${emp.hiredate}, ${emp.sal}, ${emp.comm}, ${emp.deptno}</li>
	</c:forEach>
</ol>

<hr>

<c:choose>
<c:when test="${paging.firstGroup == true}">
	<a href="/emp/page/${paging.firstPage}" class="alert alert-info">&laquo;</a>
</c:when>
<c:when test="${paging.firstGroup == false}">
	<a href="/emp/page/${paging.firstPage - 1}" class="alert alert-info">&laquo;</a>
</c:when>
</c:choose>
<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
	<a href="/emp/page/${i}">${i}</a>
</c:forEach>

<c:choose>
<c:when test="${paging.lastGroup == true}">
	<a href="/emp/page/${paging.lastPage}"class="alert alert-info">&raquo;</a>
</c:when>
<c:when test="${paging.lastGroup == false}">
	<a href="/emp/page/${paging.lastPage + 1}"class="alert alert-info">&raquo;</a>
</c:when>
</c:choose>

</body>
</html>