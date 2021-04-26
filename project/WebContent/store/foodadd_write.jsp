<%@ page language="java" contentType="text/html; charset=utf-8"%>

<html>
<head>
	<title>Food 등록</title>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<style>
html{
	font-size: 20px;
}
body{
	font-size: 1rem;
	margin:0;
}
#jb-header{
	width:100%;
	position:fixed;
	height:6rem;
}
#jb-footer {
      }
 #jb-content {
        padding-top: 6rem;
      }
</style>
</head>
<body>
<!-- header -->
<div id="jb-header" style="z-index: 5;">
<jsp:include page="../store/header.jsp"></jsp:include>
</div>
<div id="jb-content">
<form action="<%=request.getContextPath() %>/FoodAddAction.do" method="post" >
<table cellpadding="0" cellspacing="0" align=center border=1>
	<tr align="center" valign="middle">
		<td colspan="5">Food 등록 게시판</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">카테고리</div>
		</td>
		<td>
			<input name="f_category" id="f_category" type="text"
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">상품이름</div>
		</td>
		<td>
			<input name="f_name" id="f_name" type="text"
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">상품이름(영어)</div>
		</td>
		<td>
			<input name="f_ename" id="f_ename" type="text"
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">가격</div>
		</td>
		<td>
			<input name="f_price" id="f_price" type="text" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">가제</div>
		</td>
		<td>
			<textarea name="f_subtitle" id="f_subtitle" cols="67" rows="15"></textarea>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">상세설명</div>
		</td>
		<td>
			<textarea name="f_desc" id="f_desc" cols="67" rows="15"></textarea>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">이미지 주소</div>
		</td>
		<td>
			<input name="f_img" id="f_img" type="text"/>
		</td>
	</tr>
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">칼로리</div>
		</td>
		<td>
			<input name="f_calorie" id="f_calorie" type="text"
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">당류</div>
		</td>
		<td>
			<input name="f_sugar" id="f_sugar" type="text"
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">단백질</div>
		</td>
		<td>
			<input name="f_protein" id="f_protein" type="text"
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">나트륨</div>
		</td>
		<td>
			<input name="f_natrium" id="f_natrium" type="text"
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">지방</div>
		</td>
		<td>
			<input name="f_fat" id="f_fat" type="text"
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">카페인</div>
		</td>
		<td>
			<input name="f_caffeine" id="f_caffeine" type="text"
				value=""/>
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
</div>
<!-- footer -->
<div id="jb-footer">
<jsp:include page="../store/footer.jsp"></jsp:include>
</div>
</body>
</html>