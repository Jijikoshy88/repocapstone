
<%@page import="com.admin.Insert_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
</head>
<body>
<%

String idcuisine=request.getParameter("idcuisine");

String cuisine=request.getParameter("cuisine");
String fooditems=request.getParameter("fooditems");
String description=request.getParameter("description");
String price=request.getParameter("price");
String offers=request.getParameter("offers");
Insert_Values obj_Insert_Values=new Insert_Values();
obj_Insert_Values.insert_values(idcuisine, cuisine,fooditems,description,price,offers);
%>
<script type="text/javascript">
window.location.href="http://localhost:8080/capstone/insert_values.jsp"
</script>
</body>
</html>