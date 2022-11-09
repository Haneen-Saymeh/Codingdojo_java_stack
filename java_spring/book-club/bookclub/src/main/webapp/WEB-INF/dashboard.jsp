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
<h1>Welcome "${thisuser.userName}"</h1>
<h3>Books from everyone shelves</h3>

<a href="/logout">Logout</a>
<a href="/books/new">Add to my shelf</a>


<table class="table">
  <thead class="thead-dark">
    <tr>
     
      <th scope="col">ID</th>
      <th scope="col">title</th>
      <th scope="col">Author Name</th>
      <th scope="col">Posted By</th>
     
      
     
    </tr>
  </thead>
  <tbody>
  <c:forEach var="book" items="${books}">
       
   
    <tr>
     
        <td><c:out value="${book.id}"></c:out></td>
       <td><a href="/books/${book.id}"><c:out value="${book.title}"></c:out></a></td>
       <td><c:out value="${book.author}"></c:out></td>
        <td><c:out value="${book.user.userName}"></c:out></td>
      
       
  
      
    </tr>
     </c:forEach>
  
    
  </tbody>
</table>
</body>
</html>