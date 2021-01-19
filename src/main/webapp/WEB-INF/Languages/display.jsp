<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><c;out value="${language.name}" /></title>
</head>
<body>
	<a href="/languages">Dashboard</a>
	<h1><c:out value="${language.name}" /></h1>
	<h1><c:out value="${language.creator}" /></h1>
	<h1><c:out value="${language.currentVersion}" /></h1>
	<a href="/languages/<c:out value="${language.id}" />/edit">Edit</a>
	<a href="/languages/delete/<c:out value="${language.id}" />">Delete</a>

</body>
</html>