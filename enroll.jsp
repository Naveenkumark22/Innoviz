<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style=" background-color:light-gray;">
<% 

String name=request.getParameter("fullname");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String coursename=request.getParameter("course");
String phonenumber=request.getParameter("phonenumber");

try{  
	  //Class.forName("com.mysql.jdbc.Driver"); 
	  String dbDriver = "com.mysql.jdbc.Driver";
	  String dbURL = "sql206.epizy.com";
	  // Database name to access
	  String dbName = "epiz_31121277_innoviz";
	  String dbUsername = "epiz_31121277";
	  String dbPassword = "VBzdQ3TyNMOxz0";
    Class.forName(dbDriver);
    Connection con = DriverManager.getConnection(dbURL + dbName,
                                                 dbUsername, 
                                                 dbPassword);
	  	
	   
Statement st=con.createStatement();

st.executeUpdate("insert into enrollment(id,fullname,email,coursename,phonenumber,date)values(null,'"+name+"','"+email+"','"+coursename+"','"+phonenumber+"',null)");


}
catch(Exception e){ System.out.println(e);}  


%>

<br><br><br><br><br>
<div class="text-center" >
<div class="text-center"><i style="color:green " class="fas fa-check-circle fa-9x" ></i></div>
<br>
<div class="text-center" style="font-size:30px;font-weight:bold;">ENROLLED  SUCCESSFULLY</div>
<br>
<div class="text-center">
<button type="button" class="btn btn-primary btn-lg"><a style="text-decoration:none;color:white;" href="home.html" >Home</a></button>

</div>
</div>
</body>
</html>