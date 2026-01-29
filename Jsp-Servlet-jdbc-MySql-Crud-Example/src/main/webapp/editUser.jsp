<%@ page import="com.cs.model.User" %>
<%@include file="bootstrapSupport.jsp"%>
<%@include file="Navbar.jsp"%>

<%
User u = (User) request.getAttribute("user");
%>

<div class="container mt-4">
<h2>Edit User</h2>
<form action="user" method="post">
    <input type="hidden" name="action" value="update"/>
    <input type="hidden" name="id" value="<%=u.getId()%>"/>

    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" value="<%=u.getName()%>" class="form-control">
    </div>

    <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" value="<%=u.getEmail()%>" class="form-control">
    </div>

    <div class="form-group">
        <label>Country</label>
        <input type="text" name="country" value="<%=u.getCountry()%>" class="form-control">
    </div>

    <button class="btn btn-success">Update User</button>
</form>
</div>
