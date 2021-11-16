package com.admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import common.DB_Connection;
public class Search{

	public void insert_values(String idcuisine ,String cuisine,String fooditems,String description,String price,String offers)
	{
		 DB_Connection obj_DB_Connection=new DB_Connection();
		 Connection connection=obj_DB_Connection.get_connection();
		 PreparedStatement ps=null;
		try {
	String query="insert into cuisine(idcuisine,cuisine,fooditems,description,price,offers) values(?,?,?,?,?,?)";
		 ps=connection.prepareStatement(query);
		 ps.setString(1, idcuisine);
		 ps.setString(2, cuisine);
		 ps.setString(3, fooditems);
		 ps.setString(4, description);
		 ps.setString(5, price);
		 ps.setString(6, offers);
		 ps.executeUpdate();
		} catch (Exception e) {
		 System.err.println(e);
		}
	}
	}