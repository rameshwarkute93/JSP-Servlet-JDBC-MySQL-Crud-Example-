# JSP-Servlet-JDBC-MySQL-Crud-Example-

1) Create an Eclipse Dynamic Web Project.
    - Add Tomacat Server(at Taraget runtime)

2) Add Dependencies.
    - WebContent/WEB-INF/lib
        - mysql-connector-j-x.x.x.jar.
        - jstl.jar.

3) Project Structure.
ProjectName
│
├── src/main/java
│   └── com.cs
│       ├── model        → User.java (JavaBean)
│       ├── dao          → UserDao.java (Database Operations)
│       └── cntrl        → UserServlet.java (Controller)
│
├── WebContent
│   ├── index.jsp
│   ├── LoginPage.jsp
│   ├── MainPage.jsp
│   ├── addUser.jsp
│   ├── editUser.jsp
│   ├── displayUsers.jsp
│   ├── Navbar.jsp
│   └── bootstrapSupport.jsp
│
└── WEB-INF
    └── lib (JAR files: JSTL, MySQL Connector)
   
5) MySQL DataBase SetUp.
  
6) Create A JavaBeans.
     - User.java
      
7) Create A User DAO.
     - UserDao.java
      
8) Create A User Servlet.
     - UserServlet.java
       
9) Create Required Jsp Pages.

