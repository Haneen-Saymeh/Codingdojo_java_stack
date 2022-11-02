<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>

<div class="container">
      <div class="goldbox" > <label class="goldtext">Your Gold:</label><span class="totalGold" >${gold}</span></div> 

      <div class="display">
    <form method="post" action="/process">

        <div class="box1">
            <h3>Farm</h3>
            <input type="hidden" name="which_game" value="farm">
            <p>(earns 10-20 gold)</p>
            <button class="findgold" >Find Gold!</button>
        </div>
            
        </form>
        
        <form method="post" action="process">
         
        <div class="box2">
            <h3>Cave</h3>
            <input type="hidden" name="which_game" value="cave">
            <p>(earns 10-20 gold)</p>
            <button class="findgold"  >Find Gold!</button>
        </div>
        </form>


        <form method="post" action="process">
            
        <div class="box3">
            <h3>House</h3>
            <input type="hidden" name="which_game" value="house">
            <p>(earns 10-20 gold)</p>
            <button class="findgold" >Find Gold!</button>
        </div>
        </form>

        <form method="post" action="process">
            
        <div class="box4">
            <h3>Quest</h3>
            <input type="hidden" name="which_game" value="quest">
            <p>(earns/takes 0-50 gold)</p>
            <button  class="findgold" >Find Gold!</button>
        </div>
        </form>
    </div>



<div>
    <h2>Activities:</h2>
    
    <textarea name="" id="" cols="100" rows="15">
        
      <c:forEach var="activity" items="${activities}">
        <c:out value="${activity}"></c:out>
    </c:forEach>


        
    </textarea>
    
</div>

<div>
    <form action="/destroy" method="post">
       
        <button class="end" >End the Game!</button>
    </form>
</div>

    </div>

</body>
</html>