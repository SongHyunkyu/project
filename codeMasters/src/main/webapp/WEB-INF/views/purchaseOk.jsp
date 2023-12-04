<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문완료</title>

<style>
@font-face {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}

body, #btn {
	font-family: 'Cafe24Supermagic-Bold-v1.0', sans-serif;
}

.header {
	background-color: rgb(218, 241, 225);
	height: 100px;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
	margin: 50px 0 50px 0;
	font-size: 15px;
}

.test {
	display: block;
	text-align: center;
}

t {
	color: rgb(70, 70, 255);
}

#btn {
	background-color: rgb(218, 241, 225);
	width: 200px;
	height: 50px;
	font-size: 20px;
	font-weight: bolder;
	text-align: center;
	border: 1px solid #d3d3d3;
	margin: 20px 0 100px 0;
	border-radius: 30px;
	background-color: rgb(218, 241, 225);
	cursor: pointer;
}

#img1 {
	width: 150px;
	margin: 20px 0 20px 0;
}
</style>

</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="header">
		<h1>주문완료</h1>
	</div>

	<div class="test">
		<h2>
			고객님의 주문이 성공적으로
			<t>완료</t>
			되었습니다.
		</h2>
		<img src="resources/img/purchase.png" id="img1">
	</div>

	<div class="test">
		<a href="/project/po1"><input type="button" value="메인으로" id="btn"></a>
	</div>



	<%@ include file="footer.jsp"%>

</body>
</html>