<%@ page language="java" contentType="text/html; charset=utf-8"%>

<html>
<head>
	<title>product 등록 게시판</title>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>

<form action="<%=request.getContextPath() %>/ProductAddAction.do" method="post" >
<table cellpadding="0" cellspacing="0" align=center border=1>
	<tr align="center" valign="middle">
		<td colspan="5">product 등록 게시판</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">카테고리</div>
		</td>
		<td>
			<input name="p_category" id="p_category" type="text"
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">상품이름</div>
		</td>
		<td>
			<input name="p_name" id="p_name" type="text"
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">상품이름(영어)</div>
		</td>
		<td>
			<input name="p_ename" id="p_ename" type="text"
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">가격</div>
		</td>
		<td>
			<input name="p_price" id="p_price" type="text" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">상품설명</div>
		</td>
		<td>
			<textarea name="p_subtitle" id="p_subtitle" cols="67" rows="15"></textarea>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">상세설명</div>
		</td>
		<td>
			<textarea name="p_desc" id="p_desc" cols="67" rows="15"></textarea>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">이미지 주소</div>
		</td>
		<td>
			<input name="p_img" id="p_img" type="text"/>
		</td>
	</tr>
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr align="center" valign="middle">
		<td colspan="5">			
			<input type=submit value="등록">
			<input type=reset value="취소">
		</td>
	</tr>
	
</table>
</form>

</body>
</html>