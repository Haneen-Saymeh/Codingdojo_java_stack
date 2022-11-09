<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><c:out value = "${thebook.title}"/></h1>
<c:choose> 
  <c:when test="${sessionScope.user_id == thebook.user.id}">
   <p> you read <c:out value = "${thebook.title}"/></p>
   <p> Here are your thoughts</p>
  </c:when>
  <c:otherwise>
    <p> <c:out value = "${thebook.user.userName}"/> read <c:out value = "${thebook.title}"/></p>
   <p> Here are <c:out value = "${thebook.user.userName}"/> thoughts</p>
  </c:otherwise>
</c:choose>


<h3>Song rating: <c:out value = "${thebook.thoughts}"/></h3>
<c:if test="${sessionScope.user_id == thebook.user.id}">
<form action="/books/${thebook.id}" method="post">
<input type="hidden" name="_method" value="delete">
					 <input type="submit" value="Delete">
</form>
<a href="/books/${thebook.id}/edit">Edit</a>|
						
					</c:if>


<div><a href="/books">Back to shelves</a></div>

</body>
</html>