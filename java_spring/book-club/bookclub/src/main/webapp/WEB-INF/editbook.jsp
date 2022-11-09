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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Update your entry!</h1>
<a href="/books" >Back to shelves</a>
<form:form action="/books/${book.id}/edit" method="post" modelAttribute="book">
 <input type="hidden" name="_method" value="put">
  <div class="form-group">
    <form:label  path="title">Title</form:label>
     <form:errors path="title" class="text-danger" />
    <form:input type="text" class="form-control"  aria-describedby="emailHelp"  path="title"></form:input>
    </div>
   
  <div class="form-group">
    <form:label  path="author">Author</form:label>
     <form:errors path="author" class="text-danger" />
    <form:input type="text" class="form-control"  aria-describedby="emailHelp"  path="author"></form:input>
    </div>
    
    
  <div class="form-group">
    <form:label path="thoughts">My thoughts</form:label>
    <form:errors path="thoughts" class="text-danger" />
    <form:textarea class="form-control" id="exampleFormControlTextarea1" rows="3" path="thoughts"></form:textarea>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form:form>
</body>
</html>