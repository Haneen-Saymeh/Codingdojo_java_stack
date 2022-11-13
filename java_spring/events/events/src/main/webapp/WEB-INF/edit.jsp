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
<h1>Edit your  event!</h1>

<form:form action="/events/${event.id}/edit" method="post" modelAttribute="event">
<input type="hidden" name="_method" value="put">
<form:input type="hidden"  path="host" value="${thisuser.id}"/>
  <div class="form-group">
    <form:label  path="name">Name</form:label>
     <form:errors path="name" class="text-danger" />
    <form:input type="text" class="form-control"  aria-describedby="emailHelp"  path="name"></form:input>
    </div>
   
  <div class="form-group">
    <form:label  path="date">Date</form:label>
     <form:errors path="date" class="text-danger" />
    <form:input type="date" class="form-control"  aria-describedby="emailHelp"  path="date"></form:input>
    </div>
    
  <div class="form-group">  
    <form:select path="state">
       
           
  <form:option value="CA">CA</form:option>
  <form:option value="WA">WA</form:option>
  <form:option value="AZ">AZ</form:option>
     
       
    </form:select>
     </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form:form>
</body>

</html>