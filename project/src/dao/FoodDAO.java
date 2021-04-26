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
import model.FoodBean;
import model.ProductBean;

public class FoodDAO {
	// 싱글톤
	private static FoodDAO instance = new FoodDAO();

	public static FoodDAO getInstance() {
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
	public int insert(FoodBean food) {
		int result = 0;
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = getConnection();

			String sql = "insert into food values(starb_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, food.getF_category());
			pstmt.setString(2, food.getF_name());
			pstmt.setString(3, food.getF_desc());
			pstmt.setInt(4, food.getF_price());
			pstmt.setString(5, food.getF_img());
			pstmt.setString(6, food.getF_subtitle());
			pstmt.setInt(7, food.getF_calorie());
			pstmt.setInt(8, food.getF_sugar());
			pstmt.setInt(9, food.getF_protein());
			pstmt.setInt(10, food.getF_natrium());
			pstmt.setInt(11, food.getF_fat());
			pstmt.setInt(12, food.getF_caffeine());
			pstmt.setString(13, food.getF_ename());

			result = pstmt.executeUpdate(); // SQL문 실행

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (Exception e) {
				}
			if (con != null)
				try {
					con.close();
				} catch (Exception e) {
				}
		}

		return result;
	}

}
