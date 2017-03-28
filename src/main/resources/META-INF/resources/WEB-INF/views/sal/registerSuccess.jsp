<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="form" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tregisterSuccess.jsp</title>
<!-- 1. animate -->
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.min.css">
<!-- 2. bootstrap -->
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
<!-- 3. jquery -->
<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.min.js"></script>
<!-- 4. bootstrap.js -->
<script type="text/javascript" src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<style type="text/css">
	a:HOVER {
		text-decoration: none;	
	}
	a {
		color: white;
	}
	.btn-sm {
		background-color: black;
	}
	.registerBox {
		width: 180px;
		height: 380px;
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
	.preButton {
		width: 900px;
		height: 10px;
		margin: 50px auto;
		text-align: right;
	}
</style>

</head>
<body>
<h1>Sal 등록에 성공하셨습니다.</h1>
<div class="text-center table-responsive">
	<table class="table table-bordered">
		<tr class="danger">
			<td>sal_No</td>
			<td>basic Salary</td>
			<td>overtime Salary</td>
			<td>Commission</td>
			<td>aid Salary</td>
			<td>salary Date</td>
			<td>member_Srl</td>
		</tr>
		<tr>
			<td>${sal.salno}</td>
			<td>${sal.basicSal}</td>
			<td>${sal.overtimeSal == null ? 'null' : sal.overtimeSal}</td>
			<td>${sal.comm == null ? 'null' : sal.comm}</td>
			<td>${sal.aidSal == null ? 'null' : sal.aidSal}</td>
			<td>${sal.saldate == null ? 'null' : sal.saldate}</td>
			<td>${sal.membersrl}</td>
		</tr>
	</table>
</div>
	<div class="preButton">
		<a class="btn btn-sm" href="/sal/page/${param.pageNo}">
		<span class="glyphicon glyphicon-arrow-left"></span> Sal Page</a>
	</div>

</body>
</html>