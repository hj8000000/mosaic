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
	.modifyBox {
		width: 180px;
		height: 300px;
		margin: 50px auto;
	}
	h1 { 
		text-align: center;
		margin: 50px auto;
	}
	.modifyButton {
		margin: 50px auto;
		text-align: right;
	}
</style>

</head>
<body>
<h1>City 수정</h1>
<form:form action="/city/modify" method="post" modelAttribute="cityForm">

	<div class="modifyBox">
		<!-- id -->
		<div>
			<label for="id"><span class="glyphicon glyphicon-pencil"></span>
			Id</label><br>
			<form:input path="id" readonly="true"/>
		</div>
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
		<div class="modifyButton">
			<input type="submit" value="City 수정">	
		</div>
		<a href="/city/page/${param.pageNo}">목록으로</a>
	</div>

</form:form>

</body>
</html>