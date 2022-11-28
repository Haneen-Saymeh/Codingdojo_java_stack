<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>

<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Project Details</h1>


<h3>Project: <c:out value = "${theproject.title}"/></h3>

<h3>Description: <c:out value = "${theproject.description}"/></h3>

<h3>Due Date: <c:out value = "${theproject.dueDate}"/></h3>








<form action="/projects/${theproject.id}" method="post">
<input type="hidden" name="_method" value="delete">
					 <input type="submit" value="Delete">
</form>
<div><a href="/dashboard">Dashboard</a></div>

<div><a href="/projects/${theproject.id}/tasks">Check tasks</a></div>


</body>
<script>src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.1.3/axios.min.js"</script>
<script>
function getStandings()
</script>
</html>