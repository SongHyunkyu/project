<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디, 비밀번호 찾기</title>

<style>
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

#top-header {
	width: 100%;
	height: auto;
	display: inline-block;
	text-align: center;
	background-color: white;
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
	border-radius: 5px;
	border: 1px solid white;
}

.menu {
	margin-top: 1%;
	font-size: 25px;
	font-weight: bold
}

.all {
	display: flex;
	justify-content: space-around;
	height: 700px;
	margin: 0% 12%;
}



.all .id_mom {
	margin-right: 20px;
	width: 100%;
}

.all .pw_mom {
	margin-left: 15px;
	width: 100%;
}

.main_name {
	margin: 0 auto;
	margin-top: 30px;
	margin-bottom: 20px;
	width: 250px;
	font-size: 25px;
	border-radius: 10px;
	background-color: rgb(218, 241, 225);
}

.id {
	width: 100%;
	text-align: center;
	margin-top: 50px;
	border: 1px solid rgb(190, 190, 190);
	height: 670px;
	border-radius: 15px;
}

.pw {
	width: 100%;
	text-align: center;
	margin-top: 50px;
	border: 1px solid rgb(190, 190, 190);
	height: 670px;
	border-radius: 15px;
}

.mai {
	height: 30px;
}

.move {
	display: flex;
	justify-content: center;
}

.move input[type=submit] {
	margin: 60px 60px;
	height: 50px;
	width: 170px;
	border-radius: 10px;
	background-color: white;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	border: 1px solid rgb(190, 190, 190);
	font-size: 18px;
}

.move input[type=submit]:hover {
	border: none;
	background-color: rgb(165, 225, 183);
	cursor: pointer;
}

.text_name {
	margin-top: 10px;
	font-size: 20px;
}

.text_ch {
	margin-top: 10px;
}

.pw_hint_text {
	width: 228px;
	height: 39px;
	border-radius: 10px;
	border: 1px solid rgb(190, 190, 190);
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	text-align: center;
	font-size: 16px;
}

.id_name_text {
	width: 220px;
	height: 35px;
	text-align: center;
	border-radius: 10px;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	border: 1px solid rgb(190, 190, 190);
	font-size: 16px;
}

.id_email_text {
	width: 220px;
	height: 35px;
	text-align: center;
	border-radius: 10px;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	border: 1px solid rgb(190, 190, 190);
	font-size: 16px;
}

.pw_id_text {
	width: 220px;
	height: 35px;
	text-align: center;
	border-radius: 10px;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	border: 1px solid rgb(190, 190, 190);
	font-size: 16px;
}

.pw_name_text {
	width: 220px;
	height: 35px;
	text-align: center;
	border-radius: 10px;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	border: 1px solid rgb(190, 190, 190);
	font-size: 16px;
}

.pw_email_text {
	width: 220px;
	height: 35px;
	text-align: center;
	border-radius: 10px;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	border: 1px solid rgb(190, 190, 190);
	font-size: 16px;
}

.pw_answer_text {
	width: 220px;
	height: 35px;
	text-align: center;
	border-radius: 10px;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	border: 1px solid rgb(190, 190, 190);
	font-size: 16px;
}

#findIdButton {
	margin: 27px;
	border-radius: 10px;
	background-color: white;
	width: 70px;
	height: 35px;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	border: solid 1px rgb(165, 225, 183);
	font-size: 18px;
}

#findPasswordButton {
	margin: 27px;
	border-radius: 10px;
	width: 70px;
	height: 35px;
	background-color: white;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	border: solid 1px rgb(165, 225, 183);
	font-size: 18px;
}

#findIdButton:hover {
	border: none;
	background-color: rgb(165, 225, 183);
	cursor: pointer;
}

#findPasswordButton:hover {
	border: none;
	background-color: rgb(165, 225, 183);
	cursor: pointer;
}

.all .pw_mom .pw {
	width: 100%;
}

.all .border {
	width: 1px;
	background-color: #9c9c9c;
	margin: 0 10px;
}

.hidden {
	margin-top: 40px;
}

.hidden_1 {
	display: flex;
	justify-content: center;
}

.hidden_text {
	color: rgb(117, 122, 118);
	font-size: 20px;
}

.hidden_id {
	margin-right: 10px;
}

.foot {
	background-color: rgb(94, 94, 94);
	height: 200px;
	width: 100%;
	color: white;
}

.foot-box {
	display: flex;
	width: 100%;
	height: 100%;
	justify-content: center;
}

.foot_left {
	width: 40%;
}

.foot_right {
	width: 40%;
}

.foot_title {
	font-size: 23px;
	margin-bottom: 10px;
	margin-top: 40px;
	margin-left: 30px;
}

.foot_text {
	font-size: 15px;
	margin-bottom: 5px;
	margin-left: 30px;
	display: flex;
}

.foot_btn {
	width: 120px;
	height: 30px;
	color: white;
	background-color: rgb(94, 94, 94);
	border: 1px solid rgb(151, 151, 151);
	font-family: 'Cafe24Supermagic-Bold-v1.0';
}

.id_name_text:focus {
	border-color: rgb(70, 160, 97);
	outline: none;
}

.id_email_text:focus {
	border-color: rgb(70, 160, 97);
	outline: none;
}

.pw_id_text:focus {
	border-color: rgb(70, 160, 97);
	outline: none;
}

.pw_name_text:focus {
	border-color: rgb(70, 160, 97);
	outline: none;
}

.pw_email_text:focus {
	border-color: rgb(70, 160, 97);
	outline: none;
}

.pw_answer_text:focus {
	border-color: rgb(70, 160, 97);
	outline: none;
}

.pw_hint_text:focus {
	border-color: rgb(70, 160, 97);
	outline: none;
}

.hidden_id_name, .hidden_pw_name {
	margin-left: -100px;
	color: red;
}

.hidden_id_email, .hidden_pw_email {
	margin-left: -85px;
	color: red;
}

.hidden_pw_id {
	margin-left: -90px;
	color: red;
}

.hidden_pw_hint {
	margin-left: -45px;
	color: red;
}

.hidden_pw_answer {
	margin-left: -55px;
	color: red;
}

#form_search_id {
	width : 100%;
}

#find_pw {
	width : 100%;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	window.onload = function() {
		let findIdButton = document.getElementById("findIdButton");
		//let findIdButton = $('#findIdButton');
		let findPasswordButton = document.getElementById("findPasswordButton");

		let id_name_text = document.querySelector(".id_name_text");
		let id_email_text = document.querySelector(".id_email_text");
		let pw_id_text = document.querySelector(".pw_id_text");
		let pw_name_text = document.querySelector(".pw_name_text");
		let pw_email_text = document.querySelector(".pw_email_text");
		let pw_hint_text = document.querySelector(".pw_hint_text");
		let pw_answer_text = document.querySelector(".pw_answer_text");
		let hidden_id_name = document.querySelector(".hidden_id_name");
		let hidden_id_email = document.querySelector(".hidden_id_email");
		let hidden_pw_id = document.querySelector(".hidden_pw_id");
		let hidden_pw_name = document.querySelector(".hidden_pw_name");
		let hidden_pw_email = document.querySelector(".hidden_pw_email");
		let hidden_pw_answer = document.querySelector(".hidden_pw_answer");
		let hidden_pw_hint = document.querySelector(".hidden_pw_hint");
		let emailPattern = /^@/;

		id_name_text.addEventListener("focus", function() {
			if (id_name_text.value === "") {
				hidden_id_name.innerHTML = ""
			}
		})

		id_name_text.addEventListener("blur", function() {
			if (id_name_text.value === "") {
				hidden_id_name.innerHTML = "이름을 입력해주세요."
			}
		})

		id_email_text.addEventListener("focus", function() {
			if (id_email_text.value === "") {
				hidden_id_email.innerHTML = ""
			}
		})

		id_email_text.addEventListener("blur", function() {
			if (id_email_text.value === "") {
				hidden_id_email.innerHTML = "이메일을 입력해주세요."
			}
		})

		pw_id_text.addEventListener("focus", function() {
			if (pw_id_text.value === "") {
				hidden_pw_id.innerHTML = ""
			}
		})

		pw_id_text.addEventListener("blur", function() {
			if (pw_id_text.value === "") {
				hidden_pw_id.innerHTML = "아이디를 입력해주세요."
			}
		})

		pw_name_text.addEventListener("focus", function() {
			if (pw_name_text.value === "") {
				hidden_pw_name.innerHTML = ""
			}
		})

		pw_name_text.addEventListener("blur", function() {
			if (pw_name_text.value === "") {
				hidden_pw_name.innerHTML = "이름을 입력해주세요."
			}
		})

		pw_email_text.addEventListener("focus", function() {
			if (pw_email_text.value === "" || pw_email_text.value === "@") {
				hidden_pw_email.innerHTML = ""
			}
		})

		pw_email_text.addEventListener("blur", function() {
			if (pw_email_text.value === "") {
				hidden_pw_email.innerHTML = "이메일을 입력해주세요."
			} else if (emailPattern.test(pw_email_text.value)) {
				hidden_pw_email.innerHTML = "이메일형식으로 입력해주세요."
			}
		})

		pw_answer_text.addEventListener("focus", function() {
			if (pw_answer_text.value === "") {
				hidden_pw_answer.innerHTML = ""
			}
		})

		pw_answer_text.addEventListener("blur", function() {
			if (pw_answer_text.value === "") {
				hidden_pw_answer.innerHTML = "비밀번호 답을 입력해주세요."
			}
		})

		pw_hint_text.addEventListener("focus", function() {
			if (pw_hint_text.value === "선택하세요.") {
				hidden_pw_hint.innerHTML = ""
			}
		})

		pw_hint_text.addEventListener("blur", function() {
			if (pw_hint_text.value === "선택하세요.") {
				hidden_pw_hint.innerHTML = "비밀번호 힌트를 선택해주세요."
			}
		})

		// 		findIdButton.addEventListener("click", function() {

		// 			if (foundId || errorMessage) {
		// 				let hidden = document.querySelector(".hidden");
		// 				hidden.removeAttribute("hidden");
		// 			} else if (id_email_text.value === "") {
		// 				alert("이메일을 입력해주세요.");
		// 			} else if (id_name_text.value === "") {
		// 				alert("이름을 입력해주세요.");
		// 			}
		// 		});

		// 		findPasswordButton.addEventListener("click", function() {

		// 			if (pw_id_text.value === "") {
		// 				alert("아이디를 입력해주세요.");
		// 			} else if (pw_name_text.value === "") {
		// 				alert("이름을 입력해주세요.");
		// 			} else if (pw_email_text.value === "") {
		// 				alert("이메일을 입력해주세요.");
		// 			} else if (pw_hint_text.value === "선택하세요.") {
		// 				alert("비밀번호 힌트를 선택해주세요.");
		// 			} else if (pw_answer_text.value === "") {
		// 				alert("비밀번호 정답을 입력해주세요.");
		// 			}
		// 		});

	};

	function selectId() {
		var param = $('#form_search_id').serialize(); // 폼 안에 있는 변수 한번에 가져오는 메소드 

		// 		if(id_email_text.value === "") {
		// 			alert("이메일을 입력해주세요.");
		// 		} else if (id_name_text.value === "") {
		// 			alert("이름을 입력해주세요.");
		// 		}

		// 		if($('#id_email_text').val() === "") {
		// 			alert("이메일을 입력해주세요.");
		// 		} else if ($('#id_name_text').val() === "") {
		// 			alert("이름을 입력해주세요.");
		// 		}

		 
		$.ajax({
			type : 'post',
			url : '/project/findUserId',
			dataType : 'json',
			data : param,
			success : function(FoundId) { //FoundId가 곧 서버에서 받아온 rtnMap + 성공하면할행위 (성공 >> mid 찾든 못 찾든 rtnMap 있으면  무조건 성공)

				$('#div_result').empty(); //div 비우기 

				if (FoundId.MID != null) {
					$('#div_result').append(
							'고객님의 정보와 일치하는 아이디는 ' + FoundId.MID + ' 입니다.'); // 조회 id가 있으면 div_result에 내용 붙이기
				} else {
					// 리셋시키기
					$('#form_search_id').each(function() {
						  this.reset();
						});
					$('#div_result').append('일치하는 정보가 없습니다.'); // 조회 id가 없으면 div_result에 내용 붙이기
				}
			},
			error : function() { //error나면 할 행위
				$('#div_result').empty();
				$('#form_search_id').each(function() {
					  this.reset();
					});
				$('#div_result').append('일치하는 정보가 없습니다.');
			}
		});
	}

	function selectPw() {

		var param = $('#find_pw').serialize(); 

		
		$.ajax({
			type : 'post',
			url : '/project/findUserPw',
			dataType : 'json',
			data : param,
			success : function(FoundPw) { 

				$('#div_result2').empty();  

				if (FoundPw.MPW != null) {
					alert("비밀번호 재설정 페이지로 이동합니다.");
// 					location.href = "http://localhost:8080/project/pw_reset";
					
					var id_value= $('#pw_id_text').val();

					location.href = "http://localhost:8080/project/pw_reset?SelectId="+id_value;
					
// 					location.href = "비번 재설정 url";

				} else {
					alert("일치하는 정보가 없습니다.");
					$('#find_pw').each(function() {
						  this.reset();
						});
// 					$('#find_pw').reset();
// 					location.href = "http://localhost:8080/project/find_id";
// 					$('#pw_id_text').empty();
// 					$('#pw_name_text').empty();
// 					$('#pw_email_text').empty();
// 					$('#pw_hint_text').empty();
// 					$('#pw_answer_text').empty();
				}
			},
			error : function() { 
				alert("일치하는 정보가 없습니다.");
				$('#find_pw').each(function() {
					  this.reset();
					});
					
				
// 				$('#find_pw').reset();
// 				location.href = "http://localhost:8080/project/find_id";
// 				$('#pw_id_text').empty();
// 				$('#pw_name_text').empty();
// 				$('#pw_email_text').empty();
// 				$('#pw_hint_text').empty();
// 				$('#pw_answer_text').empty();
			}
		});
	}
</script>


</head>

<body>

		<%@ include file = "header_nonsearch.jsp" %>

	<div class="all">
		<form id="form_search_id">
			<!-- 		<form id="form_search_id" action="findUserId"> -->
			<div class="id_mom">
				<div class="id">
					<div class="main_name">아이디 찾기</div>
					<div class="text_name">이름</div>
					<div class="text_ch">
						<input type="text" class="id_name_text" id="id_name_text"
							name="id_name_text">
					</div>
					<div class="hidden_id_name"></div>
					<div class="text_name">이메일</div>
					<div class="text_ch">
						<input type="text" class="id_email_text" id="id_email_text"
							name="id_email_text">
					</div>
					<div class="hidden_id_email"></div>
					<div>
						<input type="button" id="findIdButton" onclick="selectId();"
							value="확인">
						<!-- 						<input type="submit" id="findIdButton" value="확인"> -->
					</div>
					<div id="div_result"></div>
				</div>
			</div>
		</form>
		<form id="find_pw">
			<div class="pw_mom">
				<div class="pw">
					<div class="main_name">비밀번호 찾기</div>
					<div class="text_name">아이디</div>
					<div class="text_ch">
						<input type="text" class="pw_id_text" id="pw_id_text" name="pw_id_text">
					</div>
					<div class="hidden_pw_id"></div>
					<div class="text_name">이름</div>
					<div class="text_ch">
						<input type="text" class="pw_name_text" id="pw_name_text" name="pw_name_text">
					</div>
					<div class="hidden_pw_name"></div>
					<div class="text_name">이메일</div>
					<div class="text_ch">
						<input type="text" class="pw_email_text" id="pw_email_text" name="pw_email_text">
					</div>
					<div class="hidden_pw_email"></div>
					<div class="text_name">비밀번호 힌트</div>
					<div class="text_ch">
						<select class="pw_hint_text" id="pw_hint_text" name="pw_hint_text">
							<option selected>선택하세요.</option>
							<option>가장 기억에 남는 장소는?</option>
							<option>가장 기억에 남는 선생님 성함은?</option>
							<option>인상 깊게 읽은 책 이름은?</option>
							<option>내가 좋아하는 캐릭터는?</option>
							<option>자신이 가장 존경하는 인물은?</option>
						</select>
					</div>
					<div class="hidden_pw_hint"></div>
					<div class="text_name">비밀번호 정답</div>
					<div class="text_ch">
						<input type="text" class="pw_answer_text" id="pw_answer_text" name="pw_answer_text">
					</div>
					<div class="hidden_pw_answer"></div>
					<div>
						<input type="button" id="findIdButton" onclick="selectPw();"
							value="확인">
						<!-- 						<input type="submit" id="findPasswordButton" value="확인"> -->
					</div>
				</div>
			</div>
		</form>
	</div>
	<div class="move">
		<div class="mainpage">
			<a
				href="http://127.0.0.1:5502/%EB%85%B8%EC%A7%80%ED%98%9C/main/main.html"><input
				type="submit" id="mai" value="메인페이지로 이동"></a>
		</div>
		<div class="login">
			<a
				href="http://127.0.0.1:5502/%EB%85%B8%EC%A7%80%ED%98%9C/login/login.html"><input
				type="submit" id="log" value="로그인페이지로 이동"></a>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>