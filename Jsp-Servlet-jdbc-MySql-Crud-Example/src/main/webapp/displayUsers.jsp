<%@ page import="java.util.List,com.cs.model.User" %>
<%@include file="bootstrapSupport.jsp"%>
<%@include file="Navbar.jsp"%>

<div class="container mt-4">
<h2>User List</h2>

<table class="table table-bordered">
<tr><th>ID</th><th>Name</th><th>Email</th><th>Country</th><th>Action</th></tr>

<%
List<User> list = (List<User>) request.getAttribute("userList");
for(User u : list){
%>
<tr>
<td><%=u.getId()%></td>
<td><%=u.getName()%></td>
<td><%=u.getEmail()%></td>
<td><%=u.getCountry()%></td>
<td>
<a href="user?action=edit&id=<%=u.getId()%>" class="btn btn-warning btn-sm">Edit</a>
<a href="user?action=delete&id=<%=u.getId()%>" class="btn btn-danger btn-sm">Delete</a>
</td>
</tr>
<% } %>
</table>

<a href="addUser.jsp" class="btn btn-primary">Add New User</a>
</div>
