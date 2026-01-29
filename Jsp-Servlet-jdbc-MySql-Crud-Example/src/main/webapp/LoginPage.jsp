<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="bootstrapSupport.jsp"%>
</head>
<body>

<h1 class="text-center text-danger mt-3">CRUD Web App</h1>

<div class="container mt-5">
  <div class="row">
    <div class="col-md-4 offset-md-4">
      <div class="card">
        <div class="card-header text-center text-danger">Login Here</div>
        <div class="card-body">

          <% if(request.getAttribute("error") != null){ %>
              <div class="alert alert-danger">
                  <%= request.getAttribute("error") %>
              </div>
          <% } %>

          <form action="LoginValidate" method="post">
            <div class="form-group">
              <label>Login Name</label>
              <input type="text" class="form-control" name="loginName" required>
            </div>

            <div class="form-group">
              <label>Password</label>
              <input type="password" class="form-control" name="password" required>
            </div>

            <button class="btn btn-primary btn-block">Login</button>
          </form>

        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
