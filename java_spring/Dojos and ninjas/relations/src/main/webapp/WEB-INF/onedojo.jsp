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
<h1><c:out value="${onedojo.name}"></c:out> Ninjas</h1>
<table class="table">
  <thead class="thead-dark">
    <tr>
     
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Age</th>
    
     
    </tr>
  </thead>
  <tbody>
  <c:forEach var="ninja" items="${onedojo.ninjas}">
       
   
    <tr>
     
       
      
       <td><c:out value="${ninja.firstName}"></c:out></td>
       <td><c:out value="${ninja.lastName}"></c:out></td>
       <td><c:out value="${ninja.age}"></c:out></td>

       
       
       
      
      
    </tr>
     </c:forEach>
  
    
  </tbody>
</table>
</body>
</html>