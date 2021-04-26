package service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.OrderDAO;
import dao.ProductDAO;
import model.BoardBean;
import model.OrderBean;
import model.ProductBean;

public class OrderFoodAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("OrderAction");
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		OrderBean board = new OrderBean();
		board.setO_quantity(Integer.parseInt(request.getParameter("o_quantity")));
		board.setO_req(request.getParameter("o_req"));
		board.setO_paytype(request.getParameter("o_paytype"));
		board.setId(request.getParameter("id"));
		board.setProduct_number(Integer.parseInt(request.getParameter("product_number")));
		board.setO_paytype(request.getParameter("o_paytype"));
		board.setO_price(Integer.parseInt(request.getParameter("o_price")));
		board.setO_req(request.getParameter("o_req"));
		
		OrderDAO dao = OrderDAO.getInstance();
		int result = dao.insert(board);
		
		
		if(result == 1) {
			 System.out.println("결제완료");
			 
			  out.print("<script>"); 
			  out.print("alert('결제 완료');");
			  out.print("location.href='./store/index.jsp' "); 
			  out.print("</script>");
			
			return null;
		}		
		
		
//		ActionForward forward = new ActionForward();
//		forward.setRedirect(false);
//		forward.setPath("./PayAction.do");
		
		return null;
	}

}
