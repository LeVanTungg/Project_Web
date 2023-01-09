package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


import context.Dbconnect;
import entity.Article;
import entity.Cate;

public class CateDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	 public List getCate() {
	    	List<Cate> list = new ArrayList<>();
	    	String query = "select * from cate";
	    	try {
				conn = new Dbconnect().getConnect();
				ps = conn.prepareStatement(query);
				rs = ps.executeQuery();
				while(rs.next()) {
					list.add(new Cate(rs.getInt(1),rs.getString(2)));
				}
			} catch (Exception e) {
				// TODO: handle exception
				 System.out.print("connect fail");
			}
	    	return list;
	    }
	 public static void main() {
//		 List<Cate> list = new CateDAO().getCate();
//		 for (Cate o : list) {
//			System.out.print(o);
//		}
		 for(int i = 1; i<10; i++) {
			 System.out.print(i);
		 }
	 }
}
