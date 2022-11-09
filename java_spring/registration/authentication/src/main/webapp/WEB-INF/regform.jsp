<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
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
<div  style="display: flex; justify-content: space-around "  >
    <div style="width:500px; height:500px; padding: 15px  "  >
        <h1>Rgistration!</h1>
    <form  method="post"  action="/reg"  style="margin-top: 20px"   >
       
        <div class="form-group">
            <label for="exampleInputEmail1">First Name</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="firstName">
        </div>

        <div class="form-group">
            <label for="exampleInputEmail1">Last Name</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="lastName">
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1">Birthday</label>
            <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="birthday">
        </div>


        <div class="form-group">
          <label for="exampleInputEmail1">Email address</label>
          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
          <input type="password" class="form-control" id="exampleInputPassword1" name="password">
        </div>

        <div class="form-group">
            <label for="exampleInputPassword1">Confirm PW</label>
            <input type="password" class="form-control" id="exampleInputPassword1" name="conpassword">
          </div>

        
        <button type="submit" class="btn btn-primary">Register</button>
      </form>
    </div>


<div style="width:500px; height:500px; padding: 15px; margin-top: 10px "   >
  <h1>Login!</h1>
  <form action="/login"  method="post" >
   
    <div class="form-group">
      <label for="exampleInputEmail1">Email address</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input type="password" class="form-control" id="exampleInputPassword1" name="password">
    </div>

    <button type="submit" class="btn btn-primary">Login!</button>


  </form>
</div>

</div>







</body>
</html>