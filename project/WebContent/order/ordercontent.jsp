<%@page import="model.OrderBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="../css/order.css">
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
</head>
<body>
	<%
	String id = request.getParameter("id");
	request.getSession().setAttribute("id", id);

	String product_number = request.getParameter("product_number");
	request.setAttribute("product_number", product_number);

	String p_name = request.getParameter("p_name");
	request.setAttribute("p_name", p_name);

	String p_price = request.getParameter("p_price");
	request.setAttribute("p_price", p_price);
	
	String p_img = request.getParameter("p_img");
	request.setAttribute("p_img", p_img);

	//	int p_num = Integer.parseInt(product_num);
	// HTML 폼에서 입력된 한글 처리를 위한 부분
	request.setCharacterEncoding("euc-kr");
	%>
	 <c:if test="${session.Scope.id } != null">  
		<form name="order"  method="POST" action="pay.jsp">
			<div class="form_inner">
				<div class="order_left">
					<img class="order_img" src="https://image.istarbucks.co.kr/upload/store/skuimg/2015/07/[106509]_20150724164325877.jpg" height=300px; width=300px;>
				</div>
				<div class="order_right">
					<table class="type05">
						<caption>결제</caption>
						<tr>
							<th scope="row">ID</th>
							<td>${sessionScope.id}</td>
						</tr>
						<tr>
							<th scope="row">상품번호</th>
							<td>${product_number}</td>
						</tr>
						<tr>
							<th scope="row">상품이름</th>
							<td>${p_name}</td>
						</tr>
						<tr>
							<th scope="row">수량</th>
							<td><select name="quantity">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
							</select></td>
						</tr>
						<tr>
							<th scope="row">가격</th>
							<td>${p_price}</td>
						</tr>
					</table>
				</div>
			</div>
			<input class="button" type="submit" value="결제" />
		</form>
	  </c:if>
	<c:if test="${session.Scope.id } = null">
		 <script>
			alert("로그인한 회원만 가능합니다")
			history.go(-1);
		</script> 
	 </c:if> 
</body>
</html>