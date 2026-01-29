<nav class="navbar navbar-expand-lg navbar-light bg-danger">
  <a class="navbar-brand text-white" href="MainPage.jsp">Dashboard</a>

  <div class="collapse navbar-collapse">
    <ul class="navbar-nav mr-auto">
        <a class="nav-link  text-white" href="index.jsp" > Home</a>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white" href="#" data-toggle="dropdown">
          Users
        </a>
        
        <div class="dropdown-menu">
          <a class="dropdown-item" href="addUser.jsp">Add User</a>
          <a class="dropdown-item" href="user?action=list">Display Users</a>
        </div>
      </li>
       
    </ul>
    

    <a href="LogoutServlet" class="btn btn-light">Logout</a>
  </div>
</nav>
