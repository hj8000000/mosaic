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
		height: 380px;
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
		margin:  auto;
		text-align: right;
	}
</style>

</head>
<body>
<h1>Sal 수정</h1>
<form:form action="/sal/modify?pageNo=${param.pageNo}" method="post" modelAttribute="salForm">
	<div class="modifyBox">
		<!-- salno -->
		<div>
			<label for="salno">
			<span class="glyphicon glyphicon-pencil"></span>
			sal_No</label>
			<form:input path="salno" readonly="true"/>
		</div>
		<!-- basicSal -->
		<div>
			<label for="basicSal">
			<span class="glyphicon glyphicon-pencil"></span>
			Basic Salary</label>
			<form:input path="basicSal"/>
			<form:errors path="basicSal"/>
		</div>
		<!-- overtimeSal -->
		<div>
			<label for="overtimeSal">
			<span class="glyphicon glyphicon-pencil"></span>
			Overtime Salary</label>
			<form:input path="overtimeSal"/>
			<form:errors path="overtimeSal"/>
		</div>
		<!-- comm -->
		<div>
			<label for="comm">
			<span class="glyphicon glyphicon-pencil"></span>
			Commission</label>
			<form:input path="comm"/>
			<form:errors path="comm"/>
		</div>
		<!-- aidSal -->
		<div>
			<label for="aidSal">
			<span class="glyphicon glyphicon-pencil"></span>
			Aid Salary</label>
			<form:input path="aidSal"/>
			<form:errors path="aidSal"/>
		</div>
		<!-- saldate -->
		<div>
			<label for="saldate">
			<span class="glyphicon glyphicon-pencil"></span>
			Salary Date</label><br>
			<form:radiobutton path="saldate" value="10" label="non_regular/10" checked="${sal.saldate eq '10' ? 'checked' : ''}"/><br>
			<form:radiobutton path="saldate" value="20" label="regular/20" checked="${sal.saldate eq '10' ? '' : 'checked'}"/>
			<form:errors path="saldate"/>
		</div>
		<!-- membersrl -->
		<div>
			<label for="membersrl">
			<span class="glyphicon glyphicon-pencil"></span>
			Member Serial</label>
			<form:input path="membersrl"/>
			<form:errors path="membersrl"/>
		</div>
		<div class="modifyButton">
			<input type="submit" value="Sal 수정">	
		</div>
	
	</div>
	
	<div class="preButton">
		<a class="btn btn-sm" href="/sal/page/${param.pageNo}">
		<span class="glyphicon glyphicon-arrow-left"></span> Sal Page</a>
	</div>
	
</form:form>
</body>
</html>