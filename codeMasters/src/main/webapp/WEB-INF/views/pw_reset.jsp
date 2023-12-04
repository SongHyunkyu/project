<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정</title>

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

.main_name {
	margin: 0 auto;
	margin-top: 60px;
	margin-bottom: 60px;
	width: 300px;
	height: 50px;
	font-size: 25px;
	border-radius: 10px;
	background-color: rgb(218, 241, 225);
	text-align: center;
}

.main_text {
	padding-top: 10px;
}

.id_mom {
	display: flex;
	justify-content: center;
}

.id {
	margin-top: 50px;
	border: 1px solid rgb(190, 190, 190);
	width: 600px;
	height: 600px;
	border-radius: 15px;
}

#form_update_pw {
	width: 100%;
}

#div_result {
	margin-top: 60px;
	font-size: 18px;
	text-align: center;
}

.text_name {
	margin-top: 60px;
	font-size: 25px;
	text-align: center;
}

.text_ch {
	margin-top: 20px;
	text-align: center;
}

#findIdButton {
	margin-top: 60px;
	border-radius: 10px;
	background-color: white;
	width: 70px;
	height: 35px;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	border: solid 1px rgb(165, 225, 183);
	font-size: 20px;
}

#findIdButton:hover {
	border: none;
	background-color: rgb(165, 225, 183);
	cursor: pointer;
}

.id_name_text {
	width: 300px;
	text-align: center;
	border-radius: 10px;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	border: 1px solid rgb(190, 190, 190);
	font-size: 20px;
	height: 40px;
}

.id_email_text {
	width: 300px;
	text-align: center;
	border-radius: 10px;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	border: 1px solid rgb(190, 190, 190);
	font-size: 20px;
	height: 40px;
}

.select {
	text-align: center;
	margin-top: -40px;
}

.hidden {
	text-align: center;
}

.hidden_text {
	margin-top: 30px;
	color: rgb(117, 122, 118);
	font-size: 20px;
}

.id_name_text:focus {
	border: 1px solid black;
	outline: 1px solid black;
}

.id_email_text:focus {
	border: 1px solid black;
	outline: 1px solid black;
}

.foot {
	background-color: rgb(94, 94, 94);
	height: 200px;
	width: 100%;
	color: white;
	margin-top: 70px;
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

.hidden_id_name, .hidden_id_email {
	margin-left: -115px;
	text-align: center;
	color: red;
	font-size: 20px;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	window.onload = function() {

		let findIdButton = document.getElementById("findIdButton");
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

		id_name_text.addEventListener("focus", function() {

			if (id_name_text.value === "") {
				hidden_id_name.innerHTML = ""
			}
		})

		id_name_text.addEventListener("blur", function() {
			if (id_name_text.value === "") {
				hidden_id_name.innerHTML = "비밀번호를 입력해주세요."
			}
		})

		id_email_text.addEventListener("focus", function() {
			if (id_email_text.value === "") {
				hidden_id_email.innerHTML = ""
			}
		})

		id_email_text.addEventListener("blur", function() {
			if (id_email_text.value === "") {
				hidden_id_email.innerHTML = "비밀번호를 확인해주세요."
			}
		})

		//          findIdButton.addEventListener("click", function () {

		//              if (id_name_text.value === "") {
		//                  alert("비밀번호를 입력해주세요");
		//              } else if (id_email_text.value === "") {
		//                  alert("비밀번호를 확인해주세요");
		//              } else if (id_name_text.value !== id_email_text.value) {
		//              	alert("비밀번호를 일치하게 입력해주세요");
		//                  id_name_text.value = "";
		//                  id_email_text.value = "";
		//              } 
		//          });

	}
	function form_update_pw() {
		var param = $('#form_update_pw').serialize(); // 폼 안에 있는 변수 한번에 가져오는 메소드 

		if ($('#PwText').val() == $('#CheckText').val()) {
			$.ajax({
				type : 'post',
				url : '/project/ReSetUserPw',
				dataType : 'json',
				data : param,
				success : function(Reset) {

					$('#div_result').empty(); 
					
					if (Reset.result == 'Y') {
						$('#div_result').append('비밀번호가 재설정 되었습니다.');

					} else {
						alert("시스템 에러");
					}

				},
				error : function() { //error나면 할 행위
					
					$('#div_result').empty();
					
					$('#form_update_pw').each(function() {
						this.reset();
					});
					$('#div_result').append('정보를 정확히 입력해주세요.');
				}

			});
		} else {
			$('#div_result').empty();
			// 리셋시키기
			$('#form_update_pw').each(function() {
				this.reset();
			});
			$('#div_result').append('내용을 일치하게 입력해주세요.');
		}
	}
</script>

</head>

<body>

	<%@ include file = "header_nonsearch.jsp" %>

	<form id="form_update_pw">
		<div class="id_mom">
			<div class="id">
				<div class="main_name">
					<div class="main_text">비밀번호 재설정</div>
				</div>
				<div class="text_name">비밀번호 입력</div>
				<div class="text_ch">
					<input type="password" class="id_name_text" id="PwText"
						name="pw_text">
				</div>
				<div class="hidden_id_name"></div>
				<div class="text_name">비밀번호 확인</div>
				<div class="text_ch">
					<input type="password" class="id_email_text" id="CheckText"
						name="pw_check_text">
				</div>

				<div id="div_result"></div>

				<div class="select">
					<input type="button" id="findIdButton" value="설정"
						onclick="form_update_pw();">
				</div>

				<input type="hidden" name="return" value="${rere}">
			</div>
		</div>
	</form>

	<%@ include file="footer.jsp"%>
</body>
</html>