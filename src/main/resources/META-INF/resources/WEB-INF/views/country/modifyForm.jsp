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

</head>
<body>
<h1>Country 수정</h1>
<form:form action="/country/modify?pageNo=${param.pageNo}" method="post" modelAttribute="countryForm">
	
	<!-- code -->
	<div>
		<label for="code"><span class="glyphicon glyphicon-pencil"></span>
		Country Code</label><br>
		<form:input path="code" readonly="true"/>
	</div>
	<div>
		<form:errors/>
	</div> 
	<!-- name -->
	<div>
		<label for="name"><span class="glyphicon glyphicon-pencil"></span>
		Country Name</label><br>
		<form:input path="name"/>
		<form:errors path="name"/>	
	</div>
	<!-- continent -->
	<div>
		<label for="continent"><span class="glyphicon glyphicon-pencil"></span>
		Continent</label><br>
		<form:select path="continent">
			<form:option value="Asia"/>
			<form:option value="Europe"/>
			<form:option value="North America"/>
			<form:option value="Africa"/>
			<form:option value="Oceania"/>
			<form:option value="Antarctica"/>
			<form:option value="South America"/>
		</form:select>
		<form:errors path="continent"/>		
	</div>
	<!-- region -->
	<div>
		<label for="region"><span class="glyphicon glyphicon-pencil"></span>
		Region</label><br>
		<form:input path="region"/>
		<form:errors path="region"/>	
	</div>
	<!-- surfaceArea -->
	<div>
		<label for="surfaceArea"><span class="glyphicon glyphicon-pencil"></span>
		Surface Area</label><br>
		<form:input path="surfaceArea"/>
		<form:errors path="surfaceArea"/>	
	</div>
	<!-- indepYear -->
	<div>
		<label for="indepYear"><span class="glyphicon glyphicon-pencil"></span>
		Indep Year</label><br>
		<form:input path="indepYear"/>
		<form:errors path="indepYear"/>	
	</div>
	<!-- population -->
	<div>
		<label for="population"><span class="glyphicon glyphicon-pencil"></span>
		Population</label><br>
		<form:input path="population"/>
		<form:errors path="population"/>	
	</div>
	<!-- lifeExpectancy -->
	<div>
		<label for="lifeExpectancy"><span class="glyphicon glyphicon-pencil"></span>
		Life Expectancy</label><br>
		<form:input path="lifeExpectancy"/>
		<form:errors path="lifeExpectancy"/>	
	</div>
	<!-- gnp -->
	<div>
		<label for="gnp"><span class="glyphicon glyphicon-pencil"></span>
		GNP</label><br>
		<form:input path="gnp"/>
		<form:errors path="gnp"/>	
	</div>
	<!-- gnpOld -->
	<div>
		<label for="gnpOld"><span class="glyphicon glyphicon-pencil"></span>
		GNP Old</label><br>
		<form:input path="gnpOld"/>
		<form:errors path="gnpOld"/>	
	</div>
	<!-- localName -->
	<div>
		<label for="localName"><span class="glyphicon glyphicon-pencil"></span>
		Local Name</label><br>
		<form:input path="localName"/>
		<form:errors path="localName"/>	
	</div>
	<!-- governmentForm -->
	<div>
		<label for="governmentForm"><span class="glyphicon glyphicon-pencil"></span>
		Country code</label><br>
		<form:input path="governmentForm"/>
		<form:errors path="governmentForm"/>	
	</div>
	<!-- headOfState -->
	<div>
		<label for="headOfState"><span class="glyphicon glyphicon-pencil"></span>
		Head Of State</label><br>
		<form:input path="headOfState"/>
		<form:errors path="headOfState"/>	
	</div>
	<!-- capital -->
	<div>
		<label for="capital"><span class="glyphicon glyphicon-pencil"></span>
		Capital</label><br>
		<form:input path="capital"/>
		<form:errors path="capital"/>	
	</div>
	<!-- code2 -->
	<div>
		<label for="code2"><span class="glyphicon glyphicon-pencil"></span>
		Country code2</label><br>
		<form:input path="code2"/>
		<form:errors path="code2"/>	
	</div>
	<!-- register Button -->
	<div class="registerButton">
		<input type="submit" value="Country 수정">	
	</div>
	<div class="preButton">
		<a class="btn btn-sm"href="/country/page/${param.pageNo}">
		<span class="glyphicon glyphicon-arrow-left"></span> Country Page</a>
	</div>

</form:form>


</body>
</html>