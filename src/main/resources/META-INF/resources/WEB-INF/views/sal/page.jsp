<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page.jsp</title>

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
		color: black;
	}
	.text-center {
		margin :30px auto;
		white-space : nowrap;
		text-overflow : ellipsis;
	}
	tr, td {
		text-transform: capitalize;
	}
	.headTR {
		background-color: skyblue;
		color: white;
	}
	.btn-sm { 
		background-color: pink;
	}
</style>

</head>
<body>
<c:set var="sals" value="${page.sals}"/>
<c:set var="paging" value="${page.paging}"/>

<h1>Salary Page.No = ${paging.pageNo}</h1>

<div class="text-center table-responsive">
	<table class="table">
		<tr class="headTR">
			<td>sal_No</td>
			<td>basic Salary</td>
			<td>overtime Salary</td>
			<td>Commission</td>
			<td>aid Salary</td>
			<td>salary Date</td>
			<td>member_Srl</td>
		</tr>
	<c:forEach var="sal" items="${sals}">
		<tr>
			<td>${sal.salno}</td>
			<td>${sal.basicSal}</td>
			<td>${sal.overtimeSal}</td>
			<td>${sal.comm}</td>
			<td>${sal.aidSal}</td>
			<td>${sal.saldate}</td>
			<td><a href="/sal/item/${sal.salno}?pageNo=${paging.pageNo}">
			<span class="glyphicon glyphicon-hand-right"></span> ${sal.membersrl}</a></td>
		</tr>
	</c:forEach>
	</table>
</div>

<hr>

<div class="text-center">
<a href="/sal/page/1">처음으로</a>

<c:choose>
<c:when test="${paging.firstGroup == true}">
	<a href="/sal/page/${paging.firstPage}" class="btn btn-sm">&laquo;</a>
</c:when>
<c:when test="${paging.firstGroup == false}">
	<a href="/sal/page/${paging.firstPage - 1}" class="btn btn-sm">&laquo;</a>
</c:when>
</c:choose>
<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
	<a href="/sal/page/${i}" class="btn btn-group-sm active">${i}</a>
</c:forEach>

<c:choose>
<c:when test="${paging.lastGroup == true}">
	<a href="/sal/page/${paging.lastPage}"class="btn btn-sm">&raquo;</a>
</c:when>
<c:when test="${paging.lastGroup == false}">
	<a href="/sal/page/${paging.lastPage + 1}"class="btn btn-sm">&raquo;</a>
</c:when>
</c:choose>

<a href="/sal/page/${paging.totalPage}">끝으로</a>
</div>


</body>
</html>