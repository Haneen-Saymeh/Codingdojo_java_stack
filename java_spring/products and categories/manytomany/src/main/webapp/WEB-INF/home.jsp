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
<h1>Home Page</h1>
<a href="/products/new">Add new product</a>
<a href="/categories/new">Add new category</a>
<div class="table-responsive col-md-6">
    <table class="table">
     <thead class="thead-dark">
    
    <tr>
     
      <th scope="col">Products</th>
      
     
    </tr>
  </thead>
  <tbody>
  <c:forEach var="product" items="${products}">
  <tr>
       <td><a href="/products/${product.id}"><c:out value="${product.name}"></c:out></a></td>
      
     </c:forEach>
   </tr>
  
    
  </tbody>
    </table>
</div>
<div class="table-responsive col-md-6">
    <table class="table">
    <thead class="thead-dark">
    <tr>
     
      <th scope="col">Categories</th>
      
     
    </tr>
  </thead>
  <tbody>
  <tr>
  <c:forEach var="category" items="${categories}">
   <tr>
       <td><a href="/categories/${category.id}"><c:out value="${category.name}"></c:out></a></td>
   
     </c:forEach>
       </tr> 
  
    
  </tbody>
</table>
    
</div>
</body>
</html>