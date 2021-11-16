<%@page import="java.util.Iterator"%>
<%@page import="common.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="com.admin.Read_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<center>
<img src="foodbox.png">
<hr>

<form action="controller/insert_controller.jsp">
<div class="form-group row">
 <label for="id" class="col-sm-2 col-form-label">CuisineId</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" name="idcuisine">
    </div>
  </div>
  <div class="form-group row">
 <label for="id" class="col-sm-2 col-form-label">CuisineName</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" name="cuisine">
    </div>
  </div>
  <div class="form-group row">
 <label for="id" class="col-sm-2 col-form-label">FoodItem</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" name="fooditems">
    </div>
  </div>
  
  <div class="form-group row">
 <label for="id" class="col-sm-2 col-form-label ">Description</label>
 <div class="col-sm-4">
    <textarea id="description" name="description" rows="4" cols="82">

     
  </textarea>
  </div>
  </div>
  <div class="form-group row">
 <label for="id" class="col-sm-2 col-form-label">Price</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" name="price">
    </div>
  </div>
  <div class="form-group row">
 <label for="id" class="col-sm-2 col-form-label">Offers</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" name="offers">
    </div>
  </div>
  <div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">

				<input type="submit" class="btn btn-info" value="Insert">

			</div>
		</div>

</form>
<hr>

<%
Read_Values obj_Read_Values=new Read_Values();
List<User_Bean> list=obj_Read_Values.get_values();
Iterator<User_Bean> it_list=list.iterator();
%>

<table class="table table-striped">
<tr>
<td>Id</td>
<td>Cuisine</td>
<td>Fooditems</td>
<td>Description</td>
<td>Price</td>
<td>Offers</td>
<td> </td>
<td></td>

</tr>
<%
while(it_list.hasNext()){
User_Bean obj_User_Bean=new User_Bean();
obj_User_Bean=it_list.next();
%>

<tr>
<td><%=obj_User_Bean.getIdcuisine() %></td>
<td><%=obj_User_Bean.getCuisine() %></td>
<td><%=obj_User_Bean.getFooditems() %></td>
<td><%=obj_User_Bean.getDescription() %></td>
<td><%=obj_User_Bean.getPrice() %></td>
<td><%=obj_User_Bean.getOffers() %></td>


<td>
<a href="edit.jsp?idcuisine=<%=obj_User_Bean.getIdcuisine()%>">Edit</a>
</td>
<td>
<a href="controller/delete_controller.jsp?idcuisine=<%=obj_User_Bean.getIdcuisine()%>">Delete</a>
</td>

</tr>
<%
}
%>
</table>
</center>
</body>
</html>