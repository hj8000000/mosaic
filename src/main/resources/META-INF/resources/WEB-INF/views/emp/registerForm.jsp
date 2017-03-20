<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerForm.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<h1>Emp 등록</h1>
<form:form action="/emp/register" method="post" modelAttribute="empForm">
	<!-- ename -->
	<div>
		<label>Ename : </label>
		<form:input path="ename"/>
		<form:errors path="ename"/>
	</div>
	<!-- job -->
	<div>
		<label>Job : </label>
		<form:input path="job"/>
		<form:errors path="job"/>
	</div>
	<!-- mgr -->
	<div>
		<label>Mgr : </label>
		<form:input path="mgr"/>
		<form:errors path="mgr"/>
	</div>
	<!-- hiredate -->
	<div>
		<label>HireDate : </label>
		<form:input path="hiredate"/>
		<form:errors path="hiredate"/>
	</div>
	<!-- sal -->
	<div>
		<label>Sal : </label>
		<form:input path="sal"/>
		<form:errors path="sal"/>
	</div>
	<!-- comm -->
	<div>
		<label>Comm : </label>
		<form:input path="comm"/>
		<form:errors path="comm"/>
	</div>
	<!-- deptno -->
	<div>
		<label>DeptNo : </label>
		<form:input path="deptno"/>
		<form:errors path="deptno"/>
	</div>
	
</form:form>

</body>
</html>