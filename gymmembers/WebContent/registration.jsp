<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/style14.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
<div class="wrapper">
 <div class="login-wrapper">
    <form action="login2.jsp" method="post" class="form">
      <img src="file:///E:/assigment/gymmembers/WebContent/css/images/avatar.png" alt="">
      <h2>Registration</h2>
      <div class="input-group">
        <input type="text" name="uname"  required>
        <label for="uname">full name</label>
      </div>
      <div class="input-group">
        <input type="text" name="uemail"  required>
        <label for="loginUser">Email</label>
      </div>
      <div class="input-group">
        <input type="text" name="uadd"  required>
        <label for="loginPassword">Address</label> <br>
       
      </div>
      <div class="input-group"> 
      <input type="text" name="uage"  required>
      <label for="loginPassword">Age</label>
       
        </div>
         <div class="input-group"> 
      <input type="text" name="umobile" required>
      <label for="loginPassword">Mobile number</label>
       
        </div>
      <input type="submit" value="registor" class="submit-btn">
       <a href="#forgot-pw" class="forgot-pw">help?</a>
      </form>
      </div>
</body>
</html>