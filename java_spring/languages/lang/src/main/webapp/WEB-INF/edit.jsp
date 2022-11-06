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

<h2>Edit an language!</h2>
<form:form action="/languages/${language.id}" method="post" modelAttribute="language">
 <input type="hidden" name="_method" value="put">
 
   <div class="form-group">
    <form:label path="name">Name</form:label>
    <form:errors path="name" class="text-danger" />
    <form:input  path="name"/>
  </div>
  
  <div class="form-group">
    <form:label path="creator">Creator</form:label>
    <form:errors path="creator" class="text-danger" />
    <form:input  path="creator"/>
  </div>
  
  <div class="form-group">
    <form:label path="version">Version</form:label>
    <form:errors path="version" class="text-danger" />
    <form:input  path="version"/>
  </div>
  
  
  
  
   <button type="submit" class="btn btn-primary">Update!</button>
</form:form>

<div><a href="/languages">Dashboard</a></div>
<form action="/languages/${language.id}" method="post">
<input type="hidden" name="_method" value="delete">
					 <input type="submit" value="Delete">
</form>

</body>
</html>