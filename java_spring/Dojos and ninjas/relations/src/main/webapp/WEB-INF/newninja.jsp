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
<h2>Add a Ninja!</h2>
<form:form action="/ninjas/create" method="post" modelAttribute="ninja">

<form:select path="dojo">
        <c:forEach var="dojo" items="${dojos}">
           
            <form:option value="${dojo.id}" path="dojo">
           
                <c:out value="${dojo.name}"/>
               
            </form:option>
        </c:forEach>
    </form:select>
  <div class="form-group">
    <form:label path="firstName">First Name</form:label>
    <form:errors path="firstName" class="text-danger" />
    <form:input  path="firstName"/>
  </div>
  
  <div class="form-group">
    <form:label path="lastName">Last Name</form:label>
    <form:errors path="lastName" class="text-danger" />
    <form:input  path="lastName"/>
  </div>
  
  <div class="form-group">
    <form:label path="age">Age</form:label>
    <form:errors path="age" class="text-danger" />
    <form:input type="number" path="age"/>
  </div>
  
  
 
  
   <button type="submit" class="btn btn-primary">Submit</button>
</form:form>
</body>
</html>