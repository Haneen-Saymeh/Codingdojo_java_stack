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
<h1>Add new song</h1>
<form:form action="/songs/create" method="post" modelAttribute="song">
  <div class="form-group">
    <form:label path="title">Title</form:label>
    <form:errors path="title" class="text-danger" />
    <form:input  path="title"/>
  </div>
  
  <div class="form-group">
    <form:label path="artist">Artist</form:label>
    <form:errors path="artist" class="text-danger" />
    <form:input  path="artist"/>
  </div>
  
  <div class="form-group">
    <form:label path="rating">Rating (1-10)</form:label>
    <form:errors path="rating" class="text-danger" />
    <form:input  path="rating"/>
  </div>
  
  
 
  
   <button type="submit" class="btn btn-primary">Add a song</button>
</form:form>
</body>
</html>