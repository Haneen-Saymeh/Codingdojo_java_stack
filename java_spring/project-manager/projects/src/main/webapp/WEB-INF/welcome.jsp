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
<div style="width:1000px; height:1000px; padding:10px; margin:0 auto">
<h1  style="text-align:center;">Welcome "${thisuser.firstName}"</h1>
<h3>All projects</h3>

<a href="/logout">Logout</a>

<a href="/projects/new"  style="margin-left:700px">+ Add new project</a  >


<table class="table">
  <thead class="thead-dark">
    <tr>
     
     
      <th scope="col">Project</th>
      <th scope="col">Team Lead</th>
      <th scope="col">Due Date</th>
       <th scope="col">Actions</th>
     
      
     
    </tr>
  </thead>
  <tbody>
  <c:forEach var="project" items="${projectsnot}">
    <tr>
     <c:if test="${thisuser.id != project.lead.id}" >
      
       <td><a href="/projects/${project.id}"><c:out value="${project.title}"></c:out></a></td>
      
        <td><c:out value="${project.lead.firstName}"></c:out></td>
         <td><c:out value="${project.dueDate}"></c:out></td>
         <td>
           <a href="/dashboard/join/${project.id}">Join the team</a>
      </td>
      
       
   </c:if>
      
    </tr>
    
     </c:forEach>
  
    
  </tbody>
</table>

<hr>
<h3>My projects</h3>

<table class="table">
  <thead class="thead-dark">
    <tr>
     
     
      <th scope="col">Project</th>
      <th scope="col">Team Lead</th>
      <th scope="col">Due Date</th>
       <th scope="col">Actions</th>
     
      
     
    </tr>
  </thead>
  <tbody>
  <c:forEach var="projectx" items="${projectsinboth}">
    <tr>
     
      
       <td><a href="/projects/${projectx.id}"><c:out value="${projectx.title}"></c:out></a></td>
      
        <td><c:out value="${projectx.lead.firstName}"></c:out></td>
         <td><c:out value="${projectx.dueDate}"></c:out></td>
         <td>
       
<c:choose> 
  <c:when test="${thisuser.id == projectx.lead.id}">
  
<a href="/projects/${projectx.id}/edit">Edit</a>
  </c:when>
  <c:otherwise>
   <a href="/dashboard/leave/${projectx.id}">Leave the team</a>
  </c:otherwise>
</c:choose>
 
      </td>
      
       
   
      
    </tr>
     </c:forEach>
  
    
  </tbody>
</table>
    
  
</div>
</body>
</html>