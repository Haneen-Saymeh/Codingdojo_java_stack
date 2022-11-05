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

<h1>Expense Details</h1>
<h3>Expense name: <c:out value = "${thetravel.name}"/></h3>
<h3>Expense vendor: <c:out value = "${thetravel.vendor}"/> </h3>
<h3>Expense description: <c:out value = "${thetravel.description}"/></h3>
<h3>Expense amount: <c:out value = "${thetravel.amount}"/></h3>

<div><a href="/travels">Go back</a></div>

</body>
</html>