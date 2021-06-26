<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%!

float weight;
float height;
float result;

%>
<%
weight=Float.parseFloat(request.getParameter("weight"));
height=Float.parseFloat(request.getParameter("height"));
 result = (100*100*weight)/(height*height);
%>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/style8.css" rel="stylesheet" />

<title>Insert title here</title>
</head>
<body>
<div class="wrapper">
     <nav class="navbar">

<img class="logo" src="file:///E:/assigment/gymmembers/WebContent/css/images/logo.png">

<ul>

<li><a class ="active" href="userpage.jsp">Home</a></li>
<li><a href="user.jsp">+Add member</a>
<li><a href="view.jsp">View members</a>
<li><a href="fessdetails.jsp">Fees details</a>
<li> <a href="rules.jsp">Rules</a>
<li><a href="#about">Offers</a>
<li><a href="about.jsp">About</a>
 <li><a href="index.jsp">logout</a>
</ul>
</nav>
<div class="center">



</div>
<img class="in" src="file:///E:/assigment/gymmembers/WebContent/css/images/bodymass.jpg" style="float:right"/>
<h2>Find BMI</h2><br>    
    <div class="login">    
    <form id="login">    
        <label><b>Enter Weight(KG):     
        </b>    
        </label>    
        <input type="text" name="weight" id="weight" value=<%=weight %> required>    
        <br><br>    
        <label><b>Enter Height(CM):  
        </b>    
        </label>    
        <input type="text" name="height" id="height" value=<%=height %> required>    
        <br><br>    
         <input type="submit" value="Find BMI">  
         <br>
         <br>
         <label><b>Result:     
        </b>    
        </label>    
        <input type="text" name="result" id="result" value=<%=result %>>    
        <br><br>      
        
    </form>     
</div>    

</div>
</body>
</html>