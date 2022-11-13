<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><c:out value = "${theevent.name}"/></h1>


<h3>Host: <c:out value = "${theevent.host.firstName}"/></h3>

<h3>Date: <c:out value = "${theevent.date}"/></h3>

<h3>State: <c:out value = "${theevent.state}"/></h3>








<form action="/projects/${theproject.id}" method="post">
<input type="hidden" name="_method" value="delete">
					 <input type="submit" value="Delete">
</form>
<div><a href="/dashboard">Dashboard</a></div>

<div><a href="/projects/${theproject.id}/tasks">Check tasks</a></div>

</body>
</html>