<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/style3.css" rel="stylesheet" />

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="topnav">
  <a class="active" href="home.jsp">Home</a>
  <a href="user.jsp">+Add new member</a>
  <a href="view.jsp">View members details</a>
  <a href="fessdetails.jsp">Fees details</a>
  <a href="rules.jsp">Rules</a>
  <a href="#about">Offers</a>
  <a href="#about">About</a>
  <a href="index.jsp">logout</a>

</div>
<div class="mid-right">
<jsp:forward page="/UserController?action=listUser" />
</div>

</body>
</html>