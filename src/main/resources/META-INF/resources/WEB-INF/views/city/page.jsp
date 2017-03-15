<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>page.jsp</title>

<!-- code_assist -->
<c:if test="false">
<link rel="stylesheet" href="../code_assist/animate.css">
<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>

<c:set var="citys" value="${page.citys}"/>
<c:set var="paging" value="${page.paging}"/>

<h1>City Page pageNo=${paging.pageNo}</h1>
<ol class="list-group">
	<c:forEach var="city" items="${citys}">
		<li class="list-group-item-info animated zoomIn">${city.id}, <a href="/city/item/${city.id}?pageNo=${paging.pageNo}">${city.name}</a>, ${city.countryCode}, ${city.district}, ${city.population}</li>
	</c:forEach>
</ol>
<hr class="animated bounce">

<a href="/city/page/1">처음으로</a>

<c:choose>
<c:when test="${paging.firstGroup == true}">
	<a href="/city/page/${paging.firstPage}" class="alert alert-info">&laquo;</a>
</c:when>
<c:when test="${paging.firstGroup == false}">
	<a href="/city/page/${paging.firstPage - 1}" class="alert alert-info">&laquo;</a>
</c:when>
</c:choose>
<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
	<a href="/city/page/${i}">${i}</a>
</c:forEach>

<c:choose>
<c:when test="${paging.lastGroup == true}">
	<a href="/city/page/${paging.lastPage}"class="alert alert-info">&raquo;</a>
</c:when>
<c:when test="${paging.lastGroup == false}">
	<a href="/city/page/${paging.lastPage + 1}"class="alert alert-info">&raquo;</a>
</c:when>
</c:choose>

<a href="/city/page/${paging.totalPage}">끝으로</a>

</body>
</html>