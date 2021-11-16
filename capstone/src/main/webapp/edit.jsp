<%@page import="com.admin.Edit_values"%>
<%@page import="common.User_Bean"%>
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
String idcuisine=(String)request.getParameter("idcuisine");
Edit_values obj_Edit_values=new Edit_values();
User_Bean obj_User_Bean=obj_Edit_values.get_value_of_user(idcuisine);
%>
<center>
<h1>Edit Values</h1>
<form action="controller/edit_controller.jsp">

<div class="form-group row">
    <label for="id" class="col-sm-2 col-form-label">ID</label>
    <div class="col-sm-10">
      <input type="text" id="idcuisine" class="form-control" value="<%=idcuisine%>">
    </div>
  </div>
  
  <div class="form-group row">
 <label for="id" class="col-sm-2 col-form-label">FoodItem</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" name="fooditems">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="cuisine" class="col-sm-2 col-form-label">Cuisine</label>
    <div class="col-sm-10">
      <input type="text"  id="cuisine" value="<%=obj_User_Bean.getCuisine()%>">
    </div>
  </div>
  
   <div class="form-group row">
    <label for="fooditems" class="col-sm-2 col-form-label">Food items</label>
    <div class="col-sm-10">
      <input type="text"  id="fooditems" value="<%=obj_User_Bean.getFooditems()%>">
    </div>
  </div>
  
   <div class="form-group row">
    <label for="price" class="col-sm-2 col-form-label">Price</label>
    <div class="col-sm-10">
      <input type="text" id="price" value="<%=obj_User_Bean.getPrice()%>">
    </div>
  </div>
  <br>
  
  <div class="form-group row">
  
    <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Description</label>
    <textarea id="description" name="description" rows="4" cols="50">
      <%=obj_User_Bean.getDescription()%>
      
  </textarea>
  </div>
   
   <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Offers</label>
    <div class="col-sm-10">
      <input type="text"  id="offers" value="<%=obj_User_Bean.getOffers()%>">
    </div>
  </div>
<br>
<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">

				<input type="submit" class="btn btn-info" value="Edit">

			</div>
		</div>

</form>
</center>
</body>
</html>