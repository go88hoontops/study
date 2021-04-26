package service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.FoodDAO;
import dao.ProductDAO;
import model.BoardBean;
import model.FoodBean;
import model.ProductBean;

public class FoodAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("FoodAddAction");
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		FoodBean board = new FoodBean();
		board.setF_category(request.getParameter("f_category"));
		board.setF_name(request.getParameter("f_name"));
		board.setF_ename(request.getParameter("f_ename"));
		board.setF_price(Integer.parseInt(request.getParameter("f_price")));
		board.setF_subtitle(request.getParameter("f_subtitle"));
		board.setF_desc(request.getParameter("f_desc"));
		board.setF_img(request.getParameter("f_img"));  // 첨부파일
		board.setF_calorie(Integer.parseInt(request.getParameter("f_calorie")));
		board.setF_sugar(Integer.parseInt(request.getParameter("f_sugar")));
		board.setF_protein(Integer.parseInt(request.getParameter("f_protein")));
		board.setF_natrium(Integer.parseInt(request.getParameter("f_natrium")));
		board.setF_fat(Integer.parseInt(request.getParameter("f_fat")));
		board.setF_caffeine(Integer.parseInt(request.getParameter("f_caffeine")));
		
		
		FoodDAO dao = FoodDAO.getInstance();
		int result = dao.insert(board);
		if(result == 1) {
			System.out.println("상품추가완료");
			
			out.print("<script>");
			out.print("alert('상품추가 완료');");
			out.print("location.href='./store/foodadd_write.jsp' ");
			out.print("</script>");
			
			return null;
		}		
		
//		ActionForward forward = new ActionForward();
//		forward.setRedirect(true);
//		forward.setPath("./store/index.jsp");
		
		return null;
	}

}
