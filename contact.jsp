<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>contact</title>
</head>
<body>

<%
String name=request.getParameter("fullname");
String email=request.getParameter("email");
String message=request.getParameter("message");
int phonenumber=Integer.parseInt(request.getParameter("phonenumber"));
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

st.executeUpdate("insert into contact(id,fullname,email,phonenumber,Message,date)values(null,'"+name+"','"+email+"',"+phonenumber+",'"+message+"',null)");


}
catch(Exception e){ System.out.println(e);}  
out.println(name);
out.println(email);
out.println(message);
out.println(phonenumber);
out.println();


%>

</body>
</html>