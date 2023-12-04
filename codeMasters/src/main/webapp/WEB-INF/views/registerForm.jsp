<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<meta charset="UTF-8">
<title>회원 가입</title>
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
	margin: 0;
}

.btn {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
}

.member .field {
	margin: 15px 0;
}

.member b {
	display: block;
	font-size: 20px;
	margin: 0 0 10px 0;
}

.member {
	width: 400px;
	margin: auto;
	padding: 0 20px;
	margin-bottom: 20px;
}

.member input:not(input[type=radio]) {
	border: 1px solid #dadada;
	width: 100%;
	padding: 15px;
	box-sizing: border-box;
}

.member input[type=button], .member input[type=submit] {
	background-color: rgb(218, 241, 225);
	width: 100%;
}

.field.gender div {
	border: 1px solid #dadada;
	padding: 15px;
	width: 100%;
	background-color: #fff;
	box-sizing: border-box;
}

.field.phone div, .field.id div {
	display: flex;
}

.member input[type=submit] {
	margin: 30px 0;
}

#id_2, #pw_3, #pw_4, #name_2, #hint_2, #tel_2, #mail_3 {
	color: red;
}

select {
	border: 1px solid #dadada;
	width: 100%;
	padding: 15px;
	box-sizing: border-box;
}

#btn_1, #submit, #btn_2 {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	cursor: pointer;
}

h1 {
	text-align: center;
	margin: 30px 0 50px 0;
	font-size: 35px;
	margin: 40px 0
}

input, select, .field.gender div {
	border-radius: 10px;
}

@media screen and (max-width: 768px) {
	.member {
		width: 90%;
	}
}

#id_1:focus, #pw_1:focus, #pw_2:focus, #name_1:focus, #birth:focus,
	select:focus, #hint_1:focus, #mail_1:focus, #mail_2:focus, #tel:focus,
	.field.gender div {
	border-color: rgb(70, 160, 97);
	outline: none;
}

#star {
	/* border: 1px solid; */
	text-align: right;
}

l {
	color: red;
}

input::placeholder, input[type='date'], select {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
}

.member {
	padding: 10px 50px;
	border: 1px solid #dadada;
	border-radius: 10px;
}

#btn_1, #btn_2 {
	width: 40%;
}

label {
	font-size: 20px;
}
</style>
</head>
<body>

	<%@ include file="header_nonsearch.jsp"%>

	<section>
		<h1>회원가입</h1>
		<div class="member">
			<form id="register" action="/project/insert" method="POST">
				<p id="star">
					<l>*</l>
					필수 입력사항
				</p>
				<div class="field id">
					<label for="userid">아이디*</label>
					<div>
						<input type="text" id="id_1" name="mid" placeholder="6~15자 영문, 숫자">
						<input type="button" value="중복 체크" id="btn_2">
					</div>
					<div id="id_2"></div>
				</div>

				<div class="field">
					<b>비밀번호*</b> <input type="password" id="pw_1" name="mpw"
						placeholder="8~12자 영문, 숫자">
					<div id="pw_3"></div>
				</div>

				<div class="field">
					<b>비밀번호 재확인*</b> <input type="password" id="pw_2" name="pwdc">
					<div id="pw_4"></div>
				</div>

				<div class="field">
					<b>이름*</b> <input type="text" id="name_1" name="mname">
					<div id="name_2"></div>
				</div>

				<div class="field gender">
					<b>성별*</b>
					<div>
						<input id="male" type="radio" name="gender" value="MALE">남자
						<input id="female" type="radio" name="gender" value="FEMALE">여자
						<input id="not" type="radio" name="gender" value="NONE" checked>선택안함
					</div>
				</div>

				<div class="field">
					<b>생년월일*</b> <input type="date" id="birth" name="birthday"
						pattern="\d{4}-\d{2}-\d{2}" title="날짜 형식은 yyyy-mm-dd 여야 합니다.">
				</div>

				<div class="field">
					<b>비밀번호 힌트*</b> <select name="password_question" id="hint">
						<option value="가장 기억에 남는 장소는?">가장 기억에 남는 장소는?</option>
						<option value="가장 기억에 남는 선생님 성함은?">가장 기억에 남는 선생님 성함은?</option>
						<option value="인상 깊게 읽은 책 이름은?">인상 깊게 읽은 책 이름은?</option>
						<option value="내가 좋아하는 캐릭터는?">내가 좋아하는 캐릭터는?</option>
						<option value="자신이 가장 존경하는 인물은?">자신이 가장 존경하는 인물은?</option>
					</select>
				</div>

				<div class="field">
					<b>비밀번호 정답*</b> <input type="text" id="hint_1"
						name="password_answer">
					<div id="hint_2"></div>
				</div>

				<div class="field phone">
					<b>이메일*</b>
					<div>
						<input type="email" id="mail_1" name="email"> <input
							type="button" value="인증번호 받기" id="btn_1">
					</div>
					<input type="text" placeholder="인증번호를 입력하세요" id="mail_2">
				</div>
				<div id="mail_3"></div>

				<div class="field">
					<b>전화번호*</b> <input type="text" id="tel"
						placeholder="010 1234 5678" maxlength="11" name="phone_number"
						oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
					<div id="tel_2"></div>
				</div>

				<div>
					<input type="submit" value="가입하기" id="submit">
				</div>

			</form>
		</div>
	</section>

	<%-- <%@ include file="footer.jsp" %> --%>

</body>

<script type="text/javascript">



window.addEventListener("load", function () {
    console.log("로딩완료")
    
    
    
    
    
    
    	let result_7 = false;
    
    let btn_2 = document.querySelector("#btn_2");
    	let userIdStatus = document.querySelector("#id_2");

    	btn_2.addEventListener("click", function(){
    	    let userId = document.querySelector("#id_1").value;
    	    let mid = document.querySelector("#id_1").value;

    	    if (!isValidUserId(userId)) {
    	        userIdStatus.innerText = '6~15자 영문, 숫자만 사용 가능합니다.';
    	        result_7 = false;
    	        final();
    	    } else {
    	        userIdStatus.innerText = ''; // 초기화
    	        // 서버로 중복 확인 요청을 보냅니다.
    	        
    	        $.ajax({
    				type : "POST",
    				url : "/project/isuserid",
    				data : {
    					mid : mid
    				},
    				success : function(result) {
    					// 서버에서 받은 결과를 처리합니다.
    					if (result) {
    						userIdStatus.innerText = "이미 사용 중인 아이디 입니다."
    						
    					} else {
    						userIdStatus.innerText = "사용 가능한 아이디 입니다."
    							result_7 = true
    						final()
    					}
    				},
    				error : function() {
    					userIdStatus.innerText = "에러 발생"
    				}
    			});
    	        
    	       
    	    }
    	

    	function isValidUserId(userId) {
    	    // 아이디 유효성 검사
    	    let regex = /^[A-Za-z0-9]{6,15}$/;
    	    return regex.test(userId);
    	}
    })
    
    
    
    btn_2.addEventListener("mousedown", function (event) {
    	btn_2.style.backgroundColor = 'rgba(174, 223, 189, 0.988)'
    })

    btn_2.addEventListener("mouseup", function (event) {
    	btn_2.style.backgroundColor = 'rgb(218, 241, 225)'
    })

    btn_2.addEventListener("mouseout", function (event) {
    	btn_2.style.backgroundColor = 'rgb(218, 241, 225)'
    })
    
    
   
    

    // 성별 입력란의 div 요소
    let genderField = document.querySelector(".field.gender div");
    let gender = document.querySelector("#gender")

    document.addEventListener("click", function (event) {
        if (event.target !== genderField) {
            genderField.style.border = "1px solid #dadada";
        }
    });

    // 성별 입력란의 div 요소에 클릭 이벤트 처리
    genderField.addEventListener("click", function (event) {
        // 클릭 시 테두리 색 변경
        event.stopPropagation(); // 다른 클릭 이벤트가 전파되지 않도록 중지
        genderField.style.border = "1px solid rgb(70, 160, 97)"; // 원하는 테두리 색으로 변경
    });

    // 랜덤한 5자리 숫자 인증번호
    let num = ""

    for (let i = 0; i < 5; i++) {
        let random = Math.floor(Math.random() * 9) + 1
        num += random
    }

    // 아이디 관련
    let id_1 = document.querySelector("#id_1")
    let id_2 = document.querySelector("#id_2")
    let result_1 = false

    let chk_id = /^[A-Za-z0-9]{6,15}$/

    id_1.oninput = function () {
        if (!chk_id.test(id_1.value) && id_1.value !== "") {
            id_2.innerHTML = "6~15자 영문, 숫자만 사용 가능합니다.";
            result_1 = false
        } else if (id_1.value === "") {
            id_2.innerHTML = null
            result_1 = false
        } else {
            id_2.innerHTML = null
             result_1 = true
        }
        final()
    }
    
    

    // 비밀번호 관련
    let pw_1 = document.querySelector("#pw_1");
    let pw_2 = document.querySelector("#pw_2");
    let pw_3 = document.querySelector("#pw_3");
    let pw_4 = document.querySelector("#pw_4");
    let result_2 = false;

    let chk_pw = /^[A-Za-z0-9]{8,12}$/;

    pw_1.oninput = function () {
        if (!chk_pw.test(pw_1.value) && pw_1.value !== "") {
            pw_3.innerHTML = "8~12자 영문, 숫자만 사용 가능합니다.";
        } else {
            pw_3.innerHTML = null;
        }
        checkPasswordMatch();
    };

    pw_2.oninput = function () {
        checkPasswordMatch();
    };

    function checkPasswordMatch() {
        if (pw_1.value !== pw_2.value && pw_2.value !== "") {
            pw_4.innerHTML = "비밀번호가 일치하지 않습니다";
            result_2 = false;
        } else {
            pw_4.innerHTML = null;
            result_2 = true;
        }
        final();
    }

    // 이름 관련 
    let name_1 = document.querySelector("#name_1")
    let name_2 = document.querySelector("#name_2")
    let result_3 = false

    let chk_name = /^[가-힣a-zA-Z]+$/

    name_1.oninput = function () {
        if (name_1.value === "") {
            name_2.innerHTML = null
            result_3 = false
        } else if (!chk_name.test(name_1.value)) {
            name_2.innerHTML = "한글과 영문 대,소문자만 사용해주세요."
            result_3 = false
        } else {
            name_2.innerHTML = null
            result_3 = true
        }
        final()
    };

    // 비밀번호 힌트 관련
    let hint = document.querySelector("#hint_1")
    let hint_2 = document.querySelector("#hint_2")
    let result_4 = false

    hint.oninput = function () {
        if (hint.value === pw_1.value && hint.value !== "") {
            result_4 = false;
            hint_2.innerHTML = "비밀번호랑 같습니다";
        } else if (hint.value === "") {
            result_4 = false;
            hint_2.innerHTML = null;
        } else {
            result_4 = true;
            hint_2.innerHTML = null;
        }
        final();
    };

    // 이메일 관련
    let mail_1 = document.querySelector("#mail_1")
    let mail_2 = document.querySelector("#mail_2")
    let btn_1 = document.querySelector("#btn_1")
    let result_5 = false

    btn_1.addEventListener("mousedown", function (event) {
        btn_1.style.backgroundColor = 'rgba(174, 223, 189, 0.988)'
    })

    btn_1.addEventListener("mouseup", function (event) {
        btn_1.style.backgroundColor = 'rgb(218, 241, 225)'
    })

    btn_1.addEventListener("mouseout", function (event) {
        btn_1.style.backgroundColor = 'rgb(218, 241, 225)'
    })

    // 정규식을 사용하여 이메일 형식을 검사
    function validateEmail(email) {
        let emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
        return emailPattern.test(email)
    }

    btn_1.addEventListener("click", function () {
        // 이메일 인증번호를 요청할 때도 이메일 형식을 검사
        if (!validateEmail(mail_1.value)) {
            alert("올바른 이메일 형식이 아닙니다.")
        }
    })
    
    let mail_3 = document.querySelector("#mail_3")
    
    $("#btn_1").click(function() {
        // 입력된 이메일 주소 가져오기
        var email = $("#mail_1").val();

        // 이메일이 비어있는지 확인
        if (email.trim() === "") {
            alert("이메일 주소를 입력하세요.");
            return;
        }

        // 서버로 이메일 주소 전송
        $.ajax({
            type: "GET",
            url: "/project/sendMail",
            data: { email: email },
            success: function(response) {
                // 서버에서의 응답을 처리 (예: 콘솔에 로그 표시)
                console.log(response);
                alert("인증번호를 이메일로 발송했습니다.");
            },
            error: function(error) {
                // 에러 처리
                console.error("에러 발생: " + error.responseText);
                alert("인증번호 발송에 실패했습니다. 잠시 후 다시 시도해주세요.");
            }
        });
    });
    
    $("#mail_2").on("input", function() {
        var email = $("#mail_1").val();
        var code = $(this).val();

        // 서버로 이메일과 인증번호 전송
        $.ajax({
            type: "POST",
            url: "/project/emailOk",
            data: { email: email, code: code },
            success: function(response) {
                console.log(response); 
                if(response.trim() === "true"){
                	result_5 = true     
                	mail_3.innerHTML = "인증번호가 일치합니다"
                } else {
                	result_5 = false     
                	mail_3.innerHTML = "인증번호가 일치하지 않습니다"
                }
                final()
            },
            error: function(error) {
                console.error("에러 발생: " + error.responseText);
                alert("인증 실패. 잠시 후 다시 시도해주세요.");
       		}
        });
    });
    

    // 생년월일
    let result_8 = false
    const birthInput = document.querySelector("#birth");

    // 현재 날짜를 가져옵니다.
    const currentDate = new Date()

 	// 최소 날짜를 1900년으로 설정합니다.
    const minDate = new Date("1900-01-01")

    // 최대 날짜를 현재 년도와 현재 달의 마지막 일로 설정합니다.
    birthInput.min = minDate.toISOString().slice(0, 10)
    birthInput.max = currentDate.toISOString().slice(0, 10)

    let birth = document.querySelector("#birth") 
    
    // 사용자가 입력한 값을 처리하여 최소 날짜 미만의 값을 입력하면 날짜를 초기화합니다.
    birthInput.addEventListener("change", function () {
        const enteredDate = new Date(birthInput.value);
        if (enteredDate < minDate) {
            birthInput.value = ""
            result_8 = false
        } else {
        	result_8 = true
        }
    });
    
    birth.oninput = function () {
        final()
    }

    // 전화번호 11자리가 아닌 경우
    let tel = document.querySelector("#tel");
	let tel_2 = document.querySelector("#tel_2");
	let result_6 = false;

	tel.oninput = function () {
    this.value = this.value.replace(/[^\d]/g, '');  

    if (tel.value.length !== 11 && tel.value.length > 0) {
        tel_2.innerHTML = "-를 제외한 11자리를 입력해주세요";
        result_6 = false;
    } else if (!tel.value.startsWith("010")) {
        tel_2.innerHTML = "010으로 시작하는 번호를 입력해주세요"; 
        result_6 = false;
    } else {
        tel_2.innerHTML = null;
        result_6 = true;
    }
    final();
};


    // 회원가입 버튼 클릭 이벤트
    let submitButton = document.querySelector("#submit");
    submitButton.disabled = true;

    submitButton.addEventListener("mousedown", function (event) {
        submitButton.style.backgroundColor = 'rgba(174, 223, 189, 0.988)'
    })

    submitButton.addEventListener("mouseup", function (event) {
        submitButton.style.backgroundColor = 'rgb(218, 241, 225)'
    })

    submitButton.addEventListener("mouseout", function (event) {
        submitButton.style.backgroundColor = 'rgb(218, 241, 225)'
    })
    
    
    function final() {
        if (
            result_1 === true &&
            result_2 === true &&
            result_3 === true &&
            result_4 === true &&
            result_5 === true &&
            result_6 === true &&
            result_7 === true &&
            result_8 === true
        ) {
            submitButton.disabled = false;
        } else {
            submitButton.disabled = true;
        }
    }
    final();
})

</script>
</html>