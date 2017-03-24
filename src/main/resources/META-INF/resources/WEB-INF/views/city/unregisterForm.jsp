<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>unregisterForm.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<style>
	.unregisterButton {
		margin: 30px auto;
		text-align: right;
	}
</style>

</head>
<body>
<h1>City 삭제</h1>
<div class="text-center table-responsive">
	<table class="table table-bordered">
		<tr class="danger">
			<td>id</td>
			<td>name</td>
			<td>country_code</td>
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
</div>
<div class="unregisterButton">
	<form action="/city/unregister/${id}?pageNo=${param.pageNo}" method="post">
		<input class="btn btn-warning" type="submit" value="city삭제">
	</form>
</div>

</body>
</html>