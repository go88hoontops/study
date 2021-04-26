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
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="../css/pay.css">

</head>
<body>
	<%
	String id = request.getParameter("id");
	request.getSession().setAttribute("id", id);

	String product_number = request.getParameter("product_number");
	request.setAttribute("product_num", product_number);

	String f_name = request.getParameter("f_name");
	request.setAttribute("f_name", f_name);

	String f_price = request.getParameter("f_price");
	request.setAttribute("f_price", f_price);

	String o_quantity = request.getParameter("quantity");
	request.setAttribute("quantity", o_quantity);
	int quantity = Integer.parseInt(request.getParameter("quantity"));
	
	
	System.out.print("pay.jsp"+o_quantity);
	//	int p_num = Integer.parseInt(product_num);
	// HTML 폼에서 입력된 한글 처리를 위한 부분
	request.setCharacterEncoding("euc-kr");
	%>
	
	
	<center>
	<form name="order" method="POST"
		action="<%=request.getContextPath()%>/OrderAction.do">
		
			<div class="order_right">
		
				<table class="type05" style="text-align: center;">
					<caption>결제</caption>
					<tr>
						<th scope="row">ID</th>
						<td><input type="hidden" value="${sessionScope.id}" name="id">${sessionScope.id}</td>
					</tr>
					<tr>
						<th scope="row">상품번호</th>
						<td>${product_number}</td>
					</tr>
					<tr>
						<th scope="row">상품이름</th>
						<td>${f_name}</td>
					</tr>
					<tr>
						<th scope="row">수량</th>
						<td><input type="hidden" value="${quantity}" name="o_quantity">
						${quantity}
						</td>
					</tr>
					<tr>
						<th scope="row">가격</th>
						<td><input type="hidden" value="${f_price}" name="o_price">
						${f_price}</td>
					</tr>
					<tr>
						<th scope="row">결제 방법</th>
						<td>
							<input name="o_paytype" id="o_paytype" type="radio" value="imagine">
							<label for="가상계좌">가상계좌</label>
							<input name="o_paytype" id="o_paytype" type="radio" value="account_transfer">
							<label for="계좌이체">계좌이체</label>
							<input name="o_paytype" id="o_paytype" type="radio" value="kakao">
							<label for="카카오페이">카카오페이</label>
						</td>
					</tr>
					<tr>
						<th scope="row">요청사항</th>
						<td>
							<textarea name="o_req" id="o_req" cols="67" rows="15"></textarea>
						</td>
					</tr>
					<tr>
						<th scope="row">총가격</th>
						<td><input name="o_totalprice" type="hidden" value="${f_price*quantity}">${f_price*quantity}</td>
					</tr>
				</table>
			</div>
			<input type="submit" value="결제" class="button"/>
	
	</form>
					</center>
</body>
</html>