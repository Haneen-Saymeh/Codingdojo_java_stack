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
<h1>Customer Name :  <c:out value="${val1}"/></h1>
<h2>Item name: <c:out value="${val2}"/></h2>
<h2>Price: $ <c:out value="${val3}"/></h2>
<h2>Description: <c:out value="${val4}"/></h2>
<h2>Vendor: <c:out value="${val5}"/></h2>

</body>
</html>