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
<a href="/dashboard">Dashboard</a>

<ol>
<c:forEach var="song" items="${topsongs}">
  <li><a href="/songs/${song.id}"><c:out value="${song.title}"></c:out></a>
      | <c:out value="${song.artist}"></c:out> | <c:out value="${song.rating}"></c:out>
  </li>
 </c:forEach> 
</ol>
</body>
</html>