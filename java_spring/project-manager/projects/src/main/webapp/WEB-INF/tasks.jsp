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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Project Details</h1>


<h3>Project: <c:out value = "${theproject.title}"/></h3>

<h3>Project lead: <c:out value = "${theproject.lead.firstName}"/></h3>



<form:form action="/projects/${theproject.id}/tasks/create" method="post" modelAttribute="task">
<form:input type="hidden"  path="creator" value="${thisuser.id}"/>
<form:input type="hidden"  path="project" value="${theproject.id}"/>
  
  
  <div class="form-group">
    <form:label path="name">Add a task ticket for the team</form:label>
    <form:errors path="name" class="text-danger" />
    <form:textarea class="form-control" id="exampleFormControlTextarea1" rows="3" path="name"></form:textarea>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form:form>

<c:forEach var="task" items="${theproject.tasks}">

<h3>Added by <c:out value = "${task.creator.firstName}"/> at <c:out value = "${task.createdAt}"/></h3>
<p><c:out value = "${task.name}"/></p>



 </c:forEach>







<div><a href="/dashboard">Dashboard</a></div>



</body>
</html>