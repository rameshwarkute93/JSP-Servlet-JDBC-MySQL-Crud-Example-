<%@include file="bootstrapSupport.jsp"%>
<%@include file="Navbar.jsp"%>

<div class="container mt-4">
<h2>Add User</h2>
<%
String msg = (String) request.getAttribute("msg");
if(msg != null){
%>
<div class="alert alert-success"><%=msg%></div>
<%
}
%>

<form action="user" method="post">
    <input type="hidden" name="action" value="insert"/>

    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" class="form-control" required>
    </div>

    <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" class="form-control" required>
    </div>

    <div class="form-group">
        <label>Country</label>
        <input type="text" name="country" class="form-control" required>
    </div>

    <button class="btn btn-primary">Add User</button>
</form>
</div>
