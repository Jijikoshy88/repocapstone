package capstone;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.beans.Statement;
import java.sql.Connection;

public class Addcuisine {

	public static void main(String[] args) {
		Connection conn =null;
		try {
		
			conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/addcuisine","root","Parambil@88");
			 java.sql.Statement stmt = conn.createStatement();
	         ResultSet rs = stmt.executeQuery("SELECT * FROM addnewcuisine.cuisine");
	         System.out.println("idcuisine  cuisine ");
	         
	         while (rs.next()) {
	            int id = rs.getInt("idcuisine");
	            String name = rs.getString("cuisine");
	          
	            System.out.println(id+"         "+name+" ");
	         }
	      } catch(Exception e) {
	         System.out.println("SQL exception occured" + e);
	      }
	   }
	}