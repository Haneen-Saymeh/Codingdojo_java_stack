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
<h1>Song Details</h1>
<h3>song title: <c:out value = "${thesong.title}"/></h3>
<h3>Song artist: <c:out value = "${thesong.artist}"/> </h3>
<h3>Song rating: <c:out value = "${thesong.rating}"/></h3>


<div><a href="/dashboard">Dashboard</a></div>

</body>
</html>