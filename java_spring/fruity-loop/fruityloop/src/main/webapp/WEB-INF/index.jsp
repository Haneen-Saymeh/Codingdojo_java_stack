<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- for Bootstrap CSS -->
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
<div   class="container">
<h1>Fruit Store</h1>
<table class="table">
  <thead class="thead-dark">
    <tr>
     
      <th scope="col">Name</th>
      <th scope="col">Price</th>
     
    </tr>
  </thead>
  <tbody>
  <c:forEach var="fruit" items="${fruits}">
       
   
    <tr>
     
      <td><c:out value="${fruit.name}"></c:out></td>
       <td><c:out value="${fruit.price}"></c:out></td>
      
    </tr>
     </c:forEach>
  
    
  </tbody>
</table>
</div>



</body>
</html>