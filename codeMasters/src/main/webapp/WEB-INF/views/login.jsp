<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>

        @font-face {
    font-family: 'Cafe24Supermagic-Bold-v1.0';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}
        input[type="text"],
        input[type="password"] {
            border: none;
            outline: none;

        }
        

        #login {
            /*로그인 버튼*/
            /* width: 100%; */

            background-color: #AFD485;
            border-color: transparent;
            color: black;
            height: 58px;
            width: 450px;
            border-radius: 30px;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;


        }

        .container {
            width: 450px;
            margin: 0 auto;
            margin-block-end: 80px;
            margin-left: 80px;
        }

        @font-face {
            font-family: 'KimjungchulGothic-Bold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/KimjungchulGothic-Bold.woff2') format('woff2');
            font-weight: 700;
            font-style: normal;
        }

        @font-face {
            font-family: 'PartialSansKR-Regular';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-1@1.1/PartialSansKR-Regular.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'KCC-Ganpan';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/KCC-Ganpan.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        body {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            display: flex;
        }

        nav div {
            font-size: 90px;
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 150px;
        }

        .loginfont {
            font-size: 50px;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 150px;
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            margin: 0;

        }

        .loginidpw {

            color: black;
            height: 58px;
            width: 450px;
            background-color: rgb(228, 228, 228);
            border-radius: 30px;
            font-size: medium;
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            text-align: center;

        }

        body {

            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #ffffff;
        }

        .toggle {
            position: relative;
            display: inline-block;
            width: 60px;
            height: 30px;
        }

        .toggle input {
            display: none;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #e4e4e4;
            transition: 0.4s;
            border-radius: 30px;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 24px;
            width: 24px;
            left: 3px;
            bottom: 3px;
            background-color: white;
            transition: 0.4s;
            border-radius: 50%;
        }

        input:checked+.slider {
            background-color: #AFD485;
        }

        input:checked+.slider:before {
            transform: translateX(30px);
        }

        .idpwremember {
            align-items: center;

            /* text-align: center; */
        }

        .a {
            vertical-align: middle;
        }

        .font {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
        }

        .logoimg {
            margin-left: 70px;
            margin-bottom: -70px;
            padding: 60px;
        }

        a {
            text-decoration: none;
            color: black;
        }

        .find {
            text-align: center;
        }

        .link-with-divider {
            position: relative;
            /* 상대적 위치 설정 */
            display: inline-block;
            margin: 20px;
            padding: 0 10px;
        }

        .link-with-divider::before {
            content: '';
            /* 가상 요소 내용 없음 */
            position: absolute;
            /* 절대적 위치 설정 */
            top: 0;
            bottom: 0;
            left: -30px;
            width: 1px;
            background-color: gray;

        }

        .loginbotton {
            font-size: 15px;
            font-family: 'Cafe24Supermagic-Bold-v1.0';
        }

    </style>
</head>
<body>

 <header>
        <a href="/project/main">

            <nav>
                <div class="logoimg"> <img src="resources/img/title_bookmasters.png" width="400px"> </div>
            </nav>
        </a>
    </header>

    <div class="container">
        <p class="loginfont">L O G I N</p> <!--login 영문글자 -->
        <form action="/project/loginchk" method="post">
            <input class="loginidpw" type="text" id="mid" name="mid" placeholder="아이디" required>
            <p> </p>
            <input class="loginidpw" type="password" id="mpw" name="mpw" placeholder="비밀번호" required>
        
        <br>
		<br>
        <div class="idpwremember">
            <label class="toggle a">
                <input type="checkbox">
                <span class="slider"></span>
            </label>
            <span class="a">
                &nbsp;&nbsp;아이디저장
            </span>
            &nbsp;&nbsp;
            <label class="toggle a">
                <input type="checkbox">
                <span class="slider"></span>
            </label>&nbsp;&nbsp;
            <span class="a">

                로그인 유지
            </span>

        </div>
        <br>
            <div>
                <button id="login" class="loginbotton" type="submit">로그인</button>
            </div>
 
        </form>
        <p></p>

        <div class="find">

            <a class="link-with-divider" href="find_id.jsp">아이디 & 비밀번호찾기</a> &nbsp;&nbsp;
            <a class="link-with-divider" href="/project/tos">회원가입</a>


        </div>

    </div>

</body>
</html>