<%@page import="com.admin.Edit_values"%>
<%@page import="common.User_Bean"%>
<%@page import="com.admin.Insert_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String idcuisine=request.getParameter("idcuisine");
String cuisine=request.getParameter("cuisine");
String fooditems=request.getParameter("fooditems");
String price=request.getParameter("price");
String description=request.getParameter("description");
String offers=request.getParameter("offers");

User_Bean obj_User_Bean=new User_Bean();

obj_User_Bean.setFooditems(fooditems);
obj_User_Bean.setCuisine(cuisine);

obj_User_Bean.setPrice(price);
obj_User_Bean.setDescription(description);
obj_User_Bean.setOffers(offers);

Edit_values obj_Edit_values=new Edit_values();
obj_Edit_values.edit_user(obj_User_Bean);
%>
<script type="text/javascript">
window.location.href="http://localhost:8080/capstone/insert_values.jsp"
</script>
</body>
</html>
