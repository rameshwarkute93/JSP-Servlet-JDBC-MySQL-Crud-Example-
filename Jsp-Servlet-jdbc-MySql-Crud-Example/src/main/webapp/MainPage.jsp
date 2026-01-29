<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    if(session.getAttribute("user") == null){
        response.sendRedirect("LoginPage.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Page</title>
<%@include file="bootstrapSupport.jsp"%>
</head>
<body>

<h1 class="text-center text-danger mt-3">Welcome to Dashboard</h1>

<%@include file="Navbar.jsp" %>

<div class="container mt-4">
    <h4 style="text-align:center; margin-top:20px;">You are successfully logged in.</h4>
</div>

</body>
</html>
