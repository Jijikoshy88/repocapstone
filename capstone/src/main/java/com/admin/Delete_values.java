package com.admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import common.DB_Connection;

public class Delete_values {
public void delete_value(String idcuisine){
	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_connection();
	PreparedStatement ps=null;
	try {
	 String querry="delete from cuisine where idcuisine=?";
	 ps=connection.prepareStatement(querry);		
	 ps.setString(1, idcuisine);;
	 ps.executeUpdate();
	} catch (Exception e) {
	 System.out.println(e);
	}
	}
}