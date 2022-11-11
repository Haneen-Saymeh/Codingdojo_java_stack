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
<h2>Hello, "${thisuser.userName}" Welcome to </h2>
<h1>The Book Broker!</h1>

<h3>Available Books to borrow!</h3>

<a href="/logout">Logout</a>
<a href="/books">Back to shelves</a>


<table class="table">
  <thead class="thead-dark">
    <tr>
     
      <th scope="col">ID</th>
      <th scope="col">title</th>
      <th scope="col">Author Name</th>
      <th scope="col">Owner</th>
       <th scope="col">Actions</th>
     
      
     
    </tr>
  </thead>
  <tbody>
  <c:forEach var="book" items="${booksnotin}">
       
   
    <tr>
     
        <td><c:out value="${book.id}"></c:out></td>
       <td><a href="/books/${book.id}"><c:out value="${book.title}"></c:out></a></td>
       <td><c:out value="${book.author}"></c:out></td>
        <td><c:out value="${book.user.userName}"></c:out></td>
         <td>
        <c:choose> 
  <c:when test="${user_id == book.user.id}">
   <form action="/books/${book.id}" method="post">
<input type="hidden" name="_method" value="delete">
					 <input type="submit" value="Delete">
</form>
<a href="/books/${book.id}/edit">Edit</a>|
  </c:when>
  <c:otherwise>
    <a href="/books/${book.id}/borrow">Borrow</a>|
  </c:otherwise>
</c:choose>
      </td>
      
       
  
      
    </tr>
     </c:forEach>
  
    
  </tbody>
</table>

<hr>
<h1>The book you borrowd</h1>

<table class="table">
  <thead class="thead-dark">
    <tr>
     
      <th scope="col">ID</th>
      <th scope="col">title</th>
      <th scope="col">Author Name</th>
      <th scope="col">Owner</th>
       <th scope="col">Actions</th>
     
      
     
    </tr>
  </thead>
  <tbody>
  <c:forEach var="bbook" items="${thisuser.bbooks}">
       
   
    <tr>
     
        <td><c:out value="${bbook.id}"></c:out></td>
       <td><a href="/books/${bbook.id}"><c:out value="${bbook.title}"></c:out></a></td>
       <td><c:out value="${bbook.author}"></c:out></td>
        <td><c:out value="${bbook.user.userName}"></c:out></td>
         <td>
       
    <a href="/bookmarket/${bbook.id}/return">Return</a>|
 
      </td>
      
       
  
      
    </tr>
     </c:forEach>
  
    
  </tbody>
</table>
</body>
</html>