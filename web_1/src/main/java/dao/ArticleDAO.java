package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import context.Dbconnect;
import entity.Article;
import entity.Cate;

public class ArticleDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	   Statement stmt = null;

    public List getAllArticle() throws ClassNotFoundException {
    	List<Article> list = new ArrayList<>();
    	String query = "select * from public.\\\"Myarticle\\\" ;";
    	 
    	try {
			conn = new Dbconnect().getConnect();
//			ps = conn.prepareStatement(query);
//			rs = ps.executeQuery();
			 stmt = conn.createStatement();

	           rs = stmt.executeQuery( "select * from Myarticle" );
			while(rs.next()) {
				list.add(new Article(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getInt(7)));
			}
		} catch (SQLException e) {
			// TODO: handle exception
			 System.out.print("----------------");
			 System.out.print(e);
		}finally {
			
		}
    	return list;
    }
    public Article getArticle(int id){
    	String query = "select * from myarticle where aid = ?";
    	 
    	try {
			conn = new Dbconnect().getConnect();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Article a = new Article(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getInt(7));
				return a;
			}
			
		} catch (Exception e) {
		
			 System.out.print(e);
		}
    	return null;
    }
    public List getArticleByCid(int id){
    	String query = "select * from myarticle where cateid = ?";
    	List<Article> list = new ArrayList<>();
    	try {
			conn = new Dbconnect().getConnect();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				list.add(new Article(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getInt(7)));
			}
			
		} catch (Exception e) {
			 System.out.print(e);
		}
    	return list;
    }
    
    
}
