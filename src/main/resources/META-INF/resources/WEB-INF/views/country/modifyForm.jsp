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
<title>modifyForm.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<style>
	a:HOVER {
		text-decoration: none;	
	}
	a {
		color: white;
	}
	.btn-sm {
		background-color: black;
	}
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
	.preButton {
		width: 600px;
		height: 10px;
		margin: 0 auto;
		text-align: right;
	}
</style>

</head>
<body>
<h1>City 수정</h1>
<form:form action="/country/modify?pageNo=${param.pageNo}" method="post" modelAttribute="cityForm">
                            
	<div class="modifyBox">
	
		<!-- id -->
		<div>
			<label for="code">
			<span class="glyphicon glyphicon-pencil"></span>
			Code</label><br>
			<form:input path="code" readonly="true"/>
		</div>
		
	</div>
	
	<div class="preButton">
		<a class="btn btn-sm"href="/country/page/${param.pageNo}">
		<span class="glyphicon glyphicon-arrow-left"></span> Country Page</a>
	</div>

</form:form>

</body>
</html>