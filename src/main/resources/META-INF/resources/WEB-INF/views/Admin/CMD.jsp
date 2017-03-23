<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template.jsp</title>

<link rel="stylesheet" href="/css/ListService.css">

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>

	<H1>This is Control Member Database Page</H1>
	
	<table class='table'>
		<tr>
			<td>MemberSrl</td>
			<td>UserID</td>
			<td>Email</td>
			<td>UserName</td>
			<td>Password(Encrypted)</td>
			<td>IsAdmin</td>
			<td class="ButtonTD">Modify</td>
			<td class="ButtonTD">Delete</td>
		</tr>
		<c:forEach var="Member" items="${Members}" >
			<tr>
				<td>${Member.membersrl}</td>
				<td>${Member.userid}</td>
				<td>${Member.email}</td>
				<td>${Member.username}</td>
				<td>${Member.password}</td>
				<td>${Member.isadmin}</td>
				<td><a class="btn btn-success" href="/Admin/CMD/Mod/${Member.membersrl}">Modify</a></td>
				<td><a class="btn btn-danger" href="/Admin/CMD/DeleteMember/${Member.membersrl}">Delete</a></td>
			</tr>
		</c:forEach> 
	</table>
	
	<a class="btn btn-info" href="/Admin/CMD/Add">AddMember</a>

</body>
</html>