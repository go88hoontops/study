package service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.BoardBean;
import model.ProductBean;

public class Check implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("Check");
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		ProductBean board = new ProductBean();
		board.setP_category(request.getParameter("p_category"));
		board.setP_name(request.getParameter("p_name"));
		board.setP_ename(request.getParameter("p_ename"));
		board.setP_price(Integer.parseInt(request.getParameter("p_price")));
		board.setP_subtitle(request.getParameter("p_subtitle"));
		board.setP_desc(request.getParameter("p_desc"));
		board.setP_img(request.getParameter("p_img"));  // 첨부파일
		
		ProductDAO dao = ProductDAO.getInstance();
		int result = dao.insert(board);
		if(result == 1) {
			/*
			 * System.out.println("상품추가완료");
			 * 
			 * out.print("<script>"); out.print("alert('상품추가 완료');");
			 * out.print("location.href='./store/index.jsp' "); out.print("</script>");
			 */
			
			return null;
		}		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("ordercontent.jsp");
		
		return null;
	}

}
