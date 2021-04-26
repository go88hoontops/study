<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

<title>Starbucks</title>
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
<div id="jb-content" style="z-index: 1;">
<jsp:include page="../store/storecontent.jsp"></jsp:include>
</div>
<!-- footer -->
<div id="jb-footer">
<jsp:include page="../store/footer.jsp"></jsp:include>
</div>
</body>
</html>