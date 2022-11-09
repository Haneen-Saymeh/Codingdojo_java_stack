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

<a href="/search/topten">Top 10 Songs!!!</a>
<a href="/songs/new">Add a new song</a>

<form action="/search/{artist}">
<input type="search" id="gsearch" name="artist">
 <button type="submit" class="btn btn-primary">Search artists</button>
 </form>
<table class="table">
  <thead class="thead-dark">
    <tr>
     
      <th scope="col">Name</th>
      <th scope="col">Rating</th>
      <th scope="col">Action</th>
      
     
    </tr>
  </thead>
  <tbody>
  <c:forEach var="song" items="${songs}">
       
   
    <tr>
     
       
       <td><a href="/songs/${song.id}"><c:out value="${song.title}"></c:out></a></td>
       <td><c:out value="${song.rating}"></c:out></td>
      
       
     <td>   <form:form action="/songs/${song.id}" method="post">
       <input type="hidden" name="_method" value="delete">
					 <input type="submit" value="Delete">
				</form:form>
       
       
       </td>
      
    </tr>
     </c:forEach>
  
    
  </tbody>
</table>
</body>
</html>