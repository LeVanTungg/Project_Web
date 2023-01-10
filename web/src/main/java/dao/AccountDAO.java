package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import context.Dbconnect;
import entity.Account;
import entity.Article;

public class AccountDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public Account checkLogin(String username, String password){
    	String query = "select * from user_web where username = ? and password = ?";
    	 
    	try {
			conn = new Dbconnect().getConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Account a = new Account(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getInt(4));
				return a;
			}
			
		} catch (Exception e) {
		
			 System.out.print(e);
		}
    	return null;
    }
	public void createAccount(String username, String password){
    	String query = "insert into user_web(username,password,roleid)\r\n"
    			+ "values(?,?,?)";
    	 
    	try {
			conn = new Dbconnect().getConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setInt(3, 3);
			ps.executeUpdate();
			
		} catch (Exception e) {
		
			 System.out.print(e);
		}
    
    }
}
