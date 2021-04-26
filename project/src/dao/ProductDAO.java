package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import model.BoardBean;
import model.ProductBean;

public class ProductDAO {
	// 싱글톤
		private static ProductDAO instance = new ProductDAO();

		public static ProductDAO getInstance() {
			return instance;
		}

		// 컨넥션풀
		private Connection getConnection() throws Exception {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/orcl");
			return ds.getConnection();
		}

		// 시작
		// 글작성 : 원문작성
				public int insert(ProductBean product) {
					int result = 0;
					Connection con = null;
					PreparedStatement pstmt = null;
					
					try {
						con = getConnection();

			String sql="insert into product values(product_seq.nextval,?,?,?,?,?,?,?)";	
			       
			
			       		pstmt = con.prepareStatement(sql);
			       		pstmt.setString(1, product.getP_category());
			       		pstmt.setString(2, product.getP_name());
			       		pstmt.setInt(3, product.getP_price());
			       		pstmt.setString(4, product.getP_img());
			       		pstmt.setString(5, product.getP_subtitle());
			       		pstmt.setString(6, product.getP_desc());
			       		pstmt.setString(7, product.getP_ename());

			       		result = pstmt.executeUpdate();		// SQL문 실행
						
					}catch(Exception e) {
						e.printStackTrace();
					}finally {
						if(pstmt!=null) try { pstmt.close(); }catch(Exception e) {}
						if(con!=null) try { con.close(); }catch(Exception e) {}
					}
					
					return result;
				}
				
				// 총 데이터 갯수 구하기
				public int getCount() {
					int result = 0;
					Connection con = null;
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					
					try {
						con = getConnection();
						
						String sql="select count(*) from model2";
						
						pstmt = con.prepareStatement(sql);
						rs = pstmt.executeQuery();	// SQL문 실행
						
						if(rs.next()) {
//							result = rs.getInt(1);
							result = rs.getInt("count(*)");
						}
						
					}catch(Exception e) {
						e.printStackTrace();
					}finally {
						if(rs!=null) try { rs.close(); }catch(Exception e) {}
						if(pstmt!=null) try { pstmt.close(); }catch(Exception e) {}
						if(con!=null) try { con.close(); }catch(Exception e) {}
					}
					
					return result;
				}
				
}
