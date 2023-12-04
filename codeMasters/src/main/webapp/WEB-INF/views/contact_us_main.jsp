<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기 메인페이지</title>
<!-- 헤더 파일 포함시키기 -->
<!-- 로그인 문제 때문에  빨간줄 뜸 -->
<!--<%@ include file="header.jsp" %>-->

<style>
body {
	margin: 0;
	height: 1100px;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
}
/* 헤더 */
@font-face {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}

body {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
}

.btn {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
}

#title {
	display: inline-block;
	width: 45%;
	font-size: 80px;
	font-weight: 600;
	margin-top: 10px;
	margin-bottom: -50px;
}

#title img {
	height: 150px;
}

#icons {
	position: absolute;
	width: 20%;
	display: flex;
	top: 70px;
	right: 10%;
	justify-content: space-around;
}

.icon {
	width: 40px;
	height: 40px;
}

.icon img {
	width: 100%;
	height: 100%;
}

.icon .btn {
	background-color: #5E5E5E;
	color: white;
	width: 100px;
	height: 40px;
	font-size: medium;
	border-radius: 5px;
	border: 1px solid white;
}

/* 서브메뉴선택 */
* {
	padding: 0;
	margin: 0;
}

/* 메뉴바 부분 작성 */
.menu {
	width: 340px;
	/* overflow: hidden; */
	/* margin: 150px auto; */
}

.menu>li {
	/* width: 20%; */
	/* 20*5=100% */
	/* float: left; */
	text-align: center;
	line-height: 40px;
	background-color: #fff;
}

.menu a {
	color: black;
}

.main_menu a {
    color: black;
    text-decoration: none;
}

.main_menu a:hover {
    text-decoration: none;
}

.submenu>li {
	line-height: 50px;
	/* border: 1px solid rgb(218, 241, 225); */
}

.submenu>li :hover {
	line-height: 50px;
	border-bottom: 2px solid rgb(89, 236, 133);
}

.submenu {
	height: 0;
	/*ul의 높이를 안보이게 처리*/
	overflow: hidden;
	/* border-radius: 10px; */
}

/* hover했을때 */
.menu>li:hover {
	border: 1px solid rgb(218, 241, 225);
	transition-duration: 0.5s;
	border-radius: 10px;
	background-color: white;
	position: relative;
	z-index: 1;
}

.menu>li:hover .submenu {
	height: 250px;
	/*서브메뉴 li한개의 높이 50*5*/
	transition-duration: 1s;
}

.m1_1 img {
	width: 44px;
	display: block;
	margin: auto;
}

/*  */
.submenu.show, .submenu-below-hamburger.show {
	height: 250px;
}

.submenu:hover, .submenu-below-hamburger:hover {
	height: auto !important;
}

#hamburger-margin {
	width: 100%;
	height: 250px;
	display: none;
}

@media screen and (max-width: 700px) {
	.search {
		width: 400px;
		min-width: 0;
	}
}

@media screen and (max-width: 600px) {
	#top-header {
		text-align: left;
	}
	#title {
		margin-top: 10px;
		margin-left: 40px;
	}
	#title img {
		height: 120px;
	}
	.menu {
		font-size: 25px;
	}
}

.sticky {
	position: fixed;
	top: 230px;
	right: 20px;
	width: 200px;
}

/* 테이블 스타일 */
table {
	width: 100%;
}

th, td {
	padding: 8px;
}

th {
	background-color: #f1f1f1;
}

.tabs {
	display: flex;
	background-color: rgb(218, 241, 225);
	justify-content: center;
	margin-top: 10px;
}

.tab-button {
	background-color: rgb(218, 241, 225);
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	margin: 0 10px;
	cursor: pointer;
}

.content {
	display: none;
	margin-top: 20px;
}

#writeButton {
	display: block;
	margin-top: 10px;
}

h1 {
	font-size: 30px;
	color: black;
	text-transform: uppercase;
	font-weight: 300;
	text-align: center;
	margin-bottom: 15px;
}

table, tr, th {
	border: 1 solid black;
	width: 800px;
}

.container1 {
	display: flex;
	justify-content: center;
	align-items: flex-end; /* 아래 정렬을 위해 추가 */
	height: 500%; /* 높이 조정을 위해 추가 */
	font-size: xx-large;
}

.big {
	width: 800px;
	text: left;
	display: flex;
	justify-content: left;
	align-items: center; /* 중앙 정렬을 위해 추가 */
	height: 400px; /* 높이 조정을 위해 추가 */
}

.bigimg {
	width: 800px;
	height: 400px;
}

p {
	/* 수평 중앙 정렬하기 */
	text-align: center;
}

.btn {
	border: solid 2px rgba(174, 223, 189, 0.988);
	background-color: white;
	color: black;
	border-radius: 10px;
	width: 200px;
	height: 65px;
	font-size: xx-large; /* 폰트크기 */
	padding: 10px 28px;
}

.sticky {
	position: fixed;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	top: 250px;
	right: 20px;
	width: 180px;
}

.h20 {
	font-size: 4ch;
}

.two {
	font-size: 3em;
}

/* 테이블 스타일 */
table {
	width: 100%;
}

th, td {
	padding: 8px;
}

th {
	background-color: rgb(218, 241, 225);
}

hr {
	border-radius: 5px;
	margin: 20px;
}

.end {
	font-size: medium;
}

.main_menu {
	padding-top: 30px;
	margin: 0 auto;
	width: 70%;
	display: flex;
	justify-content: space-around;
	font-size: 30px;
}

.main_menu .menu_1 {
	text-align: center;
	width: 100%;
	border-bottom: solid 2px rgba(174, 223, 189, 0.988);
}

.main_menu .menu_2 {
	text-align: center;
	width: 100%;
	border-bottom: solid 2px rgba(174, 223, 189, 0.988);
}

.main_menu .menu_3 {
	text-align: center;
	width: 100%;
	border: solid 2px rgba(174, 223, 189, 0.988);
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
}

body {
	margin: 0;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
}

@font-face {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}


a:visited {
	color: black;
}

a {
	text-decoration-line: none;
}
</style>
</head>
<body>

<form action="/project/contactw/submitContactForm" method="post">





	<!-- Sticky 요소 -->
	<div class="sticky" style="background-color: white;">
		<table>
			<thead>
				<tr>
					<th>관련 서비스</th>
					<!-- th안에 hr태그 넣으면 줄넣어짐-->

				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1:1문의</td>
				</tr>
				<!--<tr><td><a href="1to1.html">1:1문의</a></td></tr> 이렇게 하면 링크 로감-->
				<tr>
					<td>내 문의 보기</td>
				</tr>
				<tr>
					<td>고객의 소리 접수</td>
				</tr>
				<tr>
					<td>주문내역/배송</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="conter">
		<nav>
			<div class="main_menu">
				<a class="menu_1"
					href="/project/notice_main"> 공지사항 </a>
				<div class="menu_2">
					<a class="text"
						href="/project/question">
						자주묻는질문 </a>
				</div>
				<div class="menu_3">

					<a class="text"
						href="/project/contact_us_main">
						문의하기</a>
				</div>
			</div>
		</nav>
		<hr style="border: inset 0px white;">
		<!-- <h2 class="h20" style="text-align: left; margin-left: 0; " >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  문의사항</h2>
            &nbsp;&nbsp <hr width="1100px" style="border-radius:5px;"> -->

	</div>

	</div>
	<main>
		<form>
			<div class="container;">

				<br>
				<p id="two">
					<span style="font-size: larger;"><strong>상품이나 서비스에
							대한 문의 / 칭찬 / 제안 </strong> 사례를 접수하실 수 있습니다.</span> <br>
					<br> <strong><span style="font-size: 2em;">고객의
							소리 접수</span></strong> <br> <br>
					<br> 문의·제안·칭찬사항을 접수 할 수 있습니다. <br>
					<br> <br>


					<button class="btn" type="button">
					<a href="http://localhost:8080/project/contact_us_write.jsp"> 
					문의하기
					</a> 
					</button>
					<button class="btn" type="button">
						<a href="http://localhost:8080/project/suggestionwrite.jsp"> 
						제안하기 
						</a>
					</button>
					<button class="btn" type="button">
						<a href="http://localhost:8080/project/notice_main.jsp">
							공지사항
							</a>
					</button>

				</p>
				<br> <br> <br>
				<div class="container1">
					<div class="big">
						<div class="bigimg">
							<table
								style="border: 1px solid gray; text-align: left; border-radius: 10px;">
								<tr>
									<br>
									<td><img class="img"
										src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROkIFEmlIWNb78hqj3iNqFMuDt4rxg_OhnLA&usqp=CAU">
									</td>
									<td style="vertical-align: top;"><br>
									<strong>자주하는 질문</strong> <br>
									<br>
										<h5>궁금하신 점이 있다면 FAQ에서 먼저 찾아보세요</h5></td>

									</div>

								</tr>
							</table>
							<br>
							<div class="end">
								· 고객센터(1588-1234)를 통해 빠른 상담도 가능합니다. <br> · 평일 09:00 ~ 18:00
								운영
							</div>
						</div>
					</div>
				</div>
			</div>
	</main>



	<script type='text/javascript'>
		function showContent(contentId) {
			// 모든 content 요소 숨김 처리
			let contents = document.getElementsByClassName("content");
			for (let i = 0; i < contents.length; i++) {
				contents[i].style.display = "none";
			}

			// 선택한 contentId에 해당하는 요소만 보여줌
			let selectedContent = document.getElementById(contentId);
			selectedContent.style.display = "block";
		}
	</script>
	
	</form>
<%@ include file="footer.jsp" %>
</body>
</html>