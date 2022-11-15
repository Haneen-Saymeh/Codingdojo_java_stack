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
<div style="width: 1000px; height: 1000px; padding: 10px; margin: 0 auto">
<h1><c:out value = "${theevent.name}"/></h1>


<h3>Host: <c:out value = "${theevent.host.firstName}"/></h3>

<h3>Date: <c:out value = "${theevent.date}"/></h3>

<h3>State: <c:out value = "${theevent.state}"/></h3>
<h3>Number of attendees: <c:out value = "${theevent.attendees.size()}"/></h3>

<table class="table">
			<thead class="thead-dark">
				<tr>


				
					<th scope="col">Name</th>
					
					<th scope="col">state</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="one" items="${theevent.attendees}">
					<tr>


						
										<td><c:out value="${one.firstName}"></c:out></td>
											<td><c:out value="${one.state}"></c:out></td>

					</tr>
				</c:forEach>

			</tbody>
		</table>
		
	<div>
	<c:forEach var="mesg" items="${theevent.messages}">

			<h3>
				
				<c:out value="${mesg.creator.firstName}" />
				says:
			</h3>
			<p>
				<c:out value="${mesg.comment}" />
			</p>



		</c:forEach>
	</div>
		
<form:form action="/events/${theevent.id}/comment" method="post" modelAttribute="m">
<form:input type="hidden"  path="creator" value="${thisuser.id}"/>
<form:input type="hidden"  path="event" value="${theevent.id}"/>

<div class="form-group">
    <form:label path="comment">Add a comment</form:label>
    <form:errors path="comment" class="text-danger" />
    <form:textarea class="form-control" id="exampleFormControlTextarea1" rows="3" path="comment"></form:textarea>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form:form>









<div><a href="/dashboard">Dashboard</a></div>

</div>

</body>
</html>