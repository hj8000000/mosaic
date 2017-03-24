<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifySuccess.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<h1>City 수정 성공입니다.</h1>
<div class="text-center table-responsive">
<table class="table table-bordered">
	<tr class="danger">
		<td>id</td>
		<td>name</td>
		<td>countryCode</td>
		<td>district</td>
		<td>population</td>
	</tr>
	<tr>
		<td>${city.id}</td>
		<td>${city.name}</td>
		<td>${city.countryCode == null ? 'null' : city.countryCode}</td>
		<td>${city.district == null ? 'null' : city.district}</td>
		<td>${city.population == null ? 'null' : city.population}</td>
	</tr>
</table>
<a href="/city/page/${param.pageNo}">City Page로</a>
</div>
</body>
</html>