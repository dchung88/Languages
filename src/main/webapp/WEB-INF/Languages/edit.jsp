<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><c:out value="${language.name}"/></title>
</head>
<body>
	<form:form action="/languages/${language.id}" method="POST" modelAttribute="language">
		<input type="hidden" name="_method" value="PUT">
		<h3>
			<form:label path="name">Name</form:label>
			<form:input path="name" />
			<form:errors path="name" />
		</h3>
		<h3>
			<form:label path="creator">Creator</form:label>
			<form:input path="creator" />
			<form:errors path="creator" />
		</h3>
		<h3>
			<form:label path="currentVersion">Version</form:label>
			<form:input path="currentVersion" />
			<form:errors path="currentVersion" />
		</h3>
		<h3>
			<input type="submit" value="Submit" />
		</h3>
	</form:form>

</body>
</html>