<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "addnewcuisine";
String userid = "root";
String password = "Parambil@88";
String idcuisine=request.getParameter("idcuisine");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<body>
<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">INDIAN CUISINES</h4>
  
  <hr>
  <p class="mb-0">India is the paradise for food, boasting of not one or two but about as many cuisines as the number of communities.Food of India can be categorized into North Indian and South Indian for the purpose of simplicity. But that is a simplistic categorization, for even within every state in India one finds great culinary variation..</p>
</div>
<table class="table table-striped">

<tr >


<td>Food items</td>
<td>Description</td>
<td>Price</td>
<td>Offers</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String querry ="select * from cuisine where cuisine='Indian'";
resultSet = statement.executeQuery(querry);
while(resultSet.next()){
%>


<tr>


<td><%=resultSet.getString("fooditems") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("offers") %></td>
<td><form action="prdthtml.html" method="get" id="nameform">
     
       <button type="submit"  form="nameform" value="Submit" class="btn btn-primary" onclick="alert('Added to your Cart')">Add Cart</button>
       <button type="submit" form="nameform" class="btn btn-secondary" value="Submit">Buy</button>
       </form></td>
</tr>


<%
}

connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>

</body>
</html>