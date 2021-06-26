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
                <th>User Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>DOB</th>
                <th>Email</th>
                <th>Address</th>
                <th>Joining Date</th>
                <th>Package expire date</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.userid}" /></td>
                    <td><c:out value="${user.firstName}" /></td>
                    <td><c:out value="${user.lastName}" /></td>
                    <td><fmt:formatDate pattern="yyyy-MMM-dd" value="${user.dob}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.address}" /></td>
                    <td><fmt:formatDate pattern="yyyy-MMM-dd" value="${user.joining}" /></td>
                    <td><fmt:formatDate pattern="yyyy-MMM-dd" value="${user.expaire}" /></td>
                    <td><a href="UserController?action=edit&userId=<c:out value="${user.userid}"/>">Update</a></td>
                    <td><a href="UserController?action=delete&userId=<c:out value="${user.userid}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a href="UserController?action=insert">+Add new member</a></p>
   </div>
</body>
</html>