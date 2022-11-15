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
	<div
		style="width: 1000px; height: 1000px; padding: 10px; margin: 0 auto">
		<h1 style="text-align: center;">Welcome "${thisuser.firstName}"</h1>
		<h3>Here are some events in your state</h3>

		<a href="/logout">Logout</a> 



		<table class="table">
			<thead class="thead-dark">
				<tr>


					<th scope="col">Name</th>
					<th scope="col">Date</th>
					
					<th scope="col">Host</th>
						<th scope="col">Action/status</th>



				</tr>
			</thead>
			<tbody>
				<c:forEach var="event" items="${eventsin}">
				<c:forEach var="attend" items="${event.attendees}">
					<tr>
					

							<td><a href="/events/${event.id}"><c:out
										value="${event.name}"></c:out></a></td>
										<td><c:out value="${event.date}"></c:out></td>

							<td><c:out value="${event.host.firstName}"></c:out></td>
							
							<td>
							<c:choose>  
    <c:when test="${thisuser.id == event.host.id}">  
      <a href="/events/${event.id}/edit">Edit</a> 
    </c:when>  
    	
    <c:when test="${thisuser.id == attend.id}">  
     
       <a href="/dashboard/cancel/${event.id}">Cancel</a> 
     
    </c:when>  
    <c:otherwise>  
       <a href="/dashboard/join/${event.id}">Join the team</a> 
    </c:otherwise>  
</c:choose>  
							</td>



					
					</tr>
 </c:forEach>
				</c:forEach>


			</tbody>
		</table>

		<hr>
		<h3>Some events in other states</h3>

		<table class="table">
			<thead class="thead-dark">
				<tr>


				
					<th scope="col">Name</th>
					<th scope="col">Date</th>
					
					<th scope="col">state</th>
					<th scope="col">Host</th>
						<th scope="col">Action/status</th>



				</tr>
			</thead>
			<tbody>
				<c:forEach var="event" items="${eventsnotin}">
				<c:forEach var="attend" items="${event.attendees}">
					<tr>


						<td><a href="/events/${event.id}"><c:out
									value="${event.name}"></c:out></a></td>
										<td><c:out value="${event.date}"></c:out></td>
											<td><c:out value="${event.state}"></c:out></td>

						<td><c:out value="${event.host.firstName}"></c:out></td>
					
						<td>
						
								<c:choose>  
    <c:when test="${thisuser.id == event.host.id}">  
      <a href="/events/${event.id}/edit">Edit</a> 
    </c:when>  
    	
    <c:when test="${thisuser.id == attend.id}">  
     
       <a href="/dashboard/cancel/${event.id}">Cancel</a> 
     
    </c:when>  
    <c:otherwise>  
       <a href="/dashboard/join/${event.id}">Join the team</a> 
    </c:otherwise>  
</c:choose>  
							</td>




					</tr>
				</c:forEach>
				</c:forEach>


			</tbody>
		</table>

<h1>Create an event!</h1>

<form:form action="/dashboard/create" method="post" modelAttribute="event">
<form:input type="hidden"  path="host" value="${thisuser.id}"/>

  <div class="form-group">
    <form:label  path="name">Name</form:label>
     <form:errors path="name" class="text-danger" />
    <form:input type="text" class="form-control"  aria-describedby="emailHelp"  path="name"></form:input>
    </div>
   
  <div class="form-group">
    <form:label  path="date">Date</form:label>
     <form:errors path="date" class="text-danger" />
    <form:input type="date" class="form-control"  aria-describedby="emailHelp"  path="date"></form:input>
    </div>
    
  <div class="form-group">  
    <form:select path="state">
       
           
  <form:option value="CA">CA</form:option>
  <form:option value="WA">WA</form:option>
  <form:option value="AZ">AZ</form:option>
     
       
    </form:select>
     </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form:form>
	</div>
</body>
</html>