<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title> 
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String question=request.getParameter("question"); 
session.putValue("question",question); 
String question_number=request.getParameter("question_number");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mp2","root","1234"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into personality values ('"+question_number+"','"+question+"')"); 
   out.println("<script type=\"text/javascript\">");
   out.println("alert('Question added');");
   out.println("location='personality.html';");
   out.println("</script>");

%>
<br>
</body>
</html>