<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Language Details</h1>
<h3>Language name: <c:out value = "${thelanguage.name}"/></h3>
<h3>Language creator: <c:out value = "${thelanguage.creator}"/> </h3>
<h3>Language version: <c:out value = "${thelanguage.version}"/></h3>


<div><a href="/languages">Go back</a></div>
<a href="/languages/edit/${thelanguage.id}">Edit</a>|

<form action="/languages/${thelanguage.id}" method="post">
<input type="hidden" name="_method" value="delete">
					 <input type="submit" value="Delete">
</form>
       
       
       

</body>
</html>