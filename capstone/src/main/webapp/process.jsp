<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

String id=request.getParameter("idcuisine");
String name=request.getParameter("cuisine");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/localhost", "root", "Parambil@88");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into cuisine(idcuisine,cuisine)values('"+id+"','"+name+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>