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
<title>registerForm.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<style>
	.registerBox {
		width: 200px;
		height: 300px;
		margin: 50px auto;
	}
	h1 { 
		text-align: center;
		margin: 50px auto;
	}
	.registerButton {
		margin: 50px auto;
		text-align: right;
	}
</style>

</head>
<body>
<h1>City 등록</h1>
<form:form action="/city/register" method="post" modelAttribute="cityForm">

	<div class="registerBox">
		<!-- name -->
		<div>
			<label for="name"><span class="glyphicon glyphicon-pencil"></span>
			Name</label><br>
			<form:input path="name"/>
			<form:errors path="name"/>
		</div>
		<!-- countryCode -->
		<div>
			<label for="countryCode"><span class="glyphicon glyphicon-pencil"></span>
			CountryCode</label><br>
			<form:input path="countryCode"/>
			<form:errors path="countryCode"/>
		</div>
		<div>
			<form:errors/>
		</div> 
		<!-- district -->
		<div>
			<label for="district"><span class="glyphicon glyphicon-pencil"></span>
			District</label><br>
			<form:input path="district"/>
			<form:errors path="district"/>
		</div>
		<!-- population -->
		<div>
			<label for="population"><span class="glyphicon glyphicon-pencil"></span>
			Population</label><br>
			<form:input path="population"/>
			<form:errors path="population"/>
		</div>
		<div class="registerButton">
			<input type="submit" value="City 등록">	
		</div>
	</div>

</form:form>

</body>
</html>