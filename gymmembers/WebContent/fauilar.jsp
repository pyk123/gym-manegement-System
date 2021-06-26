<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Impetus Consultrainers</h2>
<h3><%=session.getAttribute("title2") %></h3>
<font color="red" size="6">
user <%=session.getAttribute("operation") %>Failure
</font>

<h3><a href="./registration.jsp">|Registration Page|</a> </h3>
</body>
</html>