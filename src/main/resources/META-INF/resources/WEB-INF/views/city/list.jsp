<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>list.jsp</title>

<!-- code_assist -->
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
		background-color: black;
		color: gold;
	}
</style>

</head>
<body>

<h1>City List</h1>

<div class="text-center table-responsive">
	<table class="table">
		<tr class="headTR">
			<td>id</td>
			<td>name</td>
			<td>country_code</td>
			<td>district</td>
			<td>population</td>
			<td></td>
			<td></td>
		</tr>
	<c:forEach var="city" items="${citys}">
		<tr>
			 <td>${city.id}</td>
			 <td>${city.name}</td>
			 <td>${city.countryCode}</td> 
			 <td>${city.district}</td> 
			 <td>${city.population}</td>	
		 </tr>
	</c:forEach>
	</table>
</div>

</body>
</html>