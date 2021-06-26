<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<html>
<head>
<link href="css/style4.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
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


<table>
 <thead>
            <tr>
                <th>Fullname</th>
                <th>email</th>
                <th>Address</th>
                <th>age</th>
                <th>mobile no</th>
                
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${registrations}" var="registration">
                <tr>
                    <td><c:out value="${registration.fullname}" /></td>
                    <td><c:out value="${registration.email}" /></td>
                    <td><c:out value="${registration.addr}" /></td>
                     <td><c:out value="${registration.age}" /></td>
                    <td><c:out value="${registration.number1}" /></td>
                   
                    <td><a href="UserController?action=edit&userId=<c:out value="${user.userid}"/>">Update</a></td>
                    <td><a href="UserController?action=delete&userId=<c:out value="${user.userid}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
  
   </div>
</body>
</html>