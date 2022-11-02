<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/style.css">

<title>Insert title here</title>
</head>
<body>
<div class = "container">
<h1>Send an Omikuji!</h1>
<form  action="/omikuji/process" method="post">

<label>Pick any number from 5 to 25</label>
<select class="form-select" aria-label="Default select example"  name="number">
<% for (int i =5; i <=25; i++) {%>
 
  <option value=<%= i %>><%=i %></option>
  <% } %>
  
</select>
  <div class="form-group">
    <label for="exampleInputEmail1">Enter the name of any city</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="city">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter the name of any real person</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name = "person">
  </div>
  
   <div class="form-group">
    <label for="exampleInputPassword1">Enter professional endeavor or hobby</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="hoppy">
  </div>
  
   <div class="form-group">
    <label for="exampleInputPassword1">Enter any type of living thing</label>
    <input type="text" class="form-control" name ="thing" >
  </div>
  
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Say something nice to someone</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"  name="sthnice"></textarea >
  </div>
 <h3>Send and show a friend!</h3>

  <button type="submit" class="btn btn-primary">Send</button>
</form>
</div>
</body>
</html>