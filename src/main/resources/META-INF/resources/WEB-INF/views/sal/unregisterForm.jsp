<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

</head>
<body>
<h1>Salary 삭제</h1>
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
<div class="unregisterButton">
	<form action="/sal/unregister/${salno}?pageNo=${param.pageNo}" method="post">
		<input class="btn btn-warning" type="submit" value="sal삭제">
	</form>
</div>
</body>
</html>