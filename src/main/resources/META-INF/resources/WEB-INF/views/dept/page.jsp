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
<c:set var="depts" value="${page.depts}"/>
<c:set var="paging" value="${page.paging}"/>

<h1>Dept Page List PageNo ? ${paging.pageNo}</h1>
<c:forEach var="dept" items="${depts}" varStatus="status">
	${dept.deptno}, ${dept.dname}, ${dept.loc} <br>
</c:forEach>

</body>
</html>