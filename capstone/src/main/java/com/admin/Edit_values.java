package com.admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DB_Connection;
import common.User_Bean;
public class Edit_values {
public User_Bean get_value_of_user(String idcuisine){
	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_connection();
	PreparedStatement ps=null;
	ResultSet rs=null;
	User_Bean obj_User_Bean=new User_Bean();
	try {
	 String querry="select * from cuisine where idcuisine=?";
	 ps=connection.prepareStatement(querry);		
	 ps.setString(1, idcuisine);;
	 rs=ps.executeQuery();
	 while(rs.next()){
	  obj_User_Bean.setIdcuisine(rs.getString("idcuisine"));
	  obj_User_Bean.setCuisine(rs.getString("cuisine"));
	  obj_User_Bean.setFooditems(rs.getString("fooditems"));
	  obj_User_Bean.setPrice(rs.getString("price"));
	  obj_User_Bean.setDescription(rs.getString("description"));
	  obj_User_Bean.setOffers(rs.getString("offers"));
         }
	} catch (Exception e) {
	System.out.println(e);
	}
	return obj_User_Bean;
}
public void edit_user(User_Bean obj_User_Bean){
	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_connection();
	PreparedStatement ps=null;
	try {
	String querry="update cuisine set cuisine=?,fooditems=?,price=?,description=?,offers=? where idcuisine=?";
	 ps=connection.prepareStatement(querry);		
	 ps.setString(1, obj_User_Bean.getIdcuisine());
	 ps.setString(2, obj_User_Bean.getCuisine());
	 ps.setString(3, obj_User_Bean.getFooditems());
	 ps.setString(4, obj_User_Bean.getPrice());
	 ps.setString(5, obj_User_Bean.getDescription());
	 ps.setString(6, obj_User_Bean.getOffers());
	 ps.executeUpdate();
	} catch (Exception e) {
	System.out.println(e);
	}
}
}