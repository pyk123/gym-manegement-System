<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/style5.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
    

<link type="text/css"
    href="css/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Insert title here</title>
</head>
<script>
        $(function() {
            $('input[name=dob]').datepicker();
        });
    </script>
    <script>
        $(function() {
            $('input[name=joining]').datepicker();
        });
    </script>
    <script>
        $(function() {
            $('input[name=expaire]').datepicker();
        });
    </script>
</head>
<body>
<div class="wrapper">
     <nav class="navbar">

<img class="logo" src="file:///E:/assigment/gymmembers/WebContent/css/images/logo.png">

<ul>

<li><a class ="active" href="userpage.jsp">Home</a></li>
<li><a href="user.jsp">+Add member</a>
<li><a href="view.jsp">View members</a>
<li><a href="#about">Fees details</a>
<li> <a href="rules.jsp">Rules</a>
<li><a href="#about">Offers</a>
<li><a href="about.jsp">About</a>
 <li><a href="index.jsp">logout</a>
</ul>
</nav>
<div class="center">



</div>

<div class="container">
   <form method="POST" action='UserController' name="frmAddUser">
  <label >User ID :</label>
  <input type="text"  name="userid"
            value="<c:out value="${user.userid}" />"placeholder="enter id" />
    <label>First Name:</label>
     <input
            type="text" name="firstName"
            value="<c:out value="${user.firstName}" />"  placeholder="Your name..">

    <label>Last Name:</label>
     <input
            type="text" name="lastName"
            value="<c:out value="${user.lastName}" />"  placeholder="Your last name..">
    

    <label >DOB:</label>
      <input
            type="text" name="dob"
            value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dob}" />"  placeholder="date of birth....">

    <label >Email :</label>
     <input type="text" name="email"
            value="<c:out value="${user.email}" />"  placeholder="enter email.....">
            
     <label>Address:</label>       
      <input type="text" name="address" value="<c:out value="${user.address}" />" placeholder="enter address.." style="height:50px">    
    
    <label>Joining Date:</label>
     <input
            type="text" name="joining"
            value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.joining}" />"  placeholder="date of joining...">
      <label>Package expire date:</label>
       <input
            type="text" name="expaire"
            value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.expaire}" />"  placeholder="Package expire date...">
    
<td colspan="2">
          <input
            type="submit" value="Submit" />
            </td>
  </form>
</div>
</div>
   
</body>
</html>