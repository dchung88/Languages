<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Languages Home Page</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Creator</th>
				<th>Version</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${languages}" var="lang">
			<tr>
				<td><a href="languages/<c:out value="${lang.id}"/> "><c:out value="${lang.name}"/></a></td>
				<td><c:out value="${lang.creator}"/></td>
				<td><c:out value="${lang.currentVersion}"/></td>
				<td><a href="/languages/delete/<c:out value="${lang.id}"/>" >Delete</a> <a href="languages/<c:out value="${lang.id}"/>/edit ">Edit</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<form:form action="/languages" method="POST" modelAttribute="addLang">
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