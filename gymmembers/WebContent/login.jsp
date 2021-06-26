<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link href="css/style14.css" rel="stylesheet" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="style.css">
  <title>Login Form Demo</title>
</head>
<body>
  <div class="login-wrapper">
    <form action="" class="form">
      <img src="file:///E:/assigment/gymmembers/WebContent/css/images/avatar.png" alt="">
      <h2>Login</h2>
      <div class="input-group">
        <input type="text" name="loginUser" id="loginUser" required>
        <label for="loginUser">User Name</label>
      </div>
      <div class="input-group">
        <input type="password" name="loginPassword" id="loginPassword" required>
        <label for="loginPassword">Password</label>
      </div>
      <input type="submit" value="Login" class="submit-btn">
       <a href="#forgot-pw" class="forgot-pw">register here </a>
      </form>
   
  </div>
</body>
</html>
