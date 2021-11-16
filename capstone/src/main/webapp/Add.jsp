<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html> 
    <head> 
        <title>Add cuisine</title>
        <link rel="stylesheet" href="style.css">
    </head> 
    <body bgcolor="#ffffcc">
     <form action="process.jsp" method="get">
      <TABLE style="background-color: #ECE5B6;" WIDTH="40%">
         <tr>
           <td >ID</td>
             <td ><input type="text" name="idcuisine" SIZE="35"></td>
              </tr>
              <tr>
                <td >Cuisine</td>
                <td ><input type="text" name="cuisine" SIZE="35"></td>
              </tr>
             
                <tr><td></td>
                 <td><input type="reset" name="reset"
                  value="reset">&nbsp;&nbsp;
                <input type="submit" value="submit"></td></tr>
            </TABLE>
        </form>
    </body> 
</html>