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
<h1> <c:out value="${category.name}"/></h1>
<c:forEach var="product" items="${products}">

    <%--we can do easily product.categories--%>       
           
           
              <p>  <c:out value="${product.name}"/></p>
               
            
        </c:forEach>
        
       

<form action="/categories/${category.id}/productid" method="post">
	<h4>Add Product:</h4>				
	<select name="productid" id="productid" class="input">
	    <c:forEach var="theproduct" items="${productz}">
	    	<option value="${theproduct.id}">${theproduct.name}</option>
	    </c:forEach>
	</select>
	<input class="input" class="button" type="submit" value="Add"/>
</form>
 <a href="/">Home</a> 
    
</body>
</html>