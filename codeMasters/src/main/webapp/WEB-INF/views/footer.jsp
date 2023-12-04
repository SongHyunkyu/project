<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Footer</title>
    <style>
        body {
            margin: 0;
            font-family: 'Cafe24Supermagic-Bold-v1.0';
        }
        @font-face {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2') format('woff2');
            font-weight: 700;
            font-style: normal;
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
    </style>
</head>
<body>
    <footer class="foot">
        <div class="foot-box">
            <div class="foot_left">
                <div class="foot_title">(주) 북마스터</div>
                
                <div class="foot_text"><div style="margin-right: 15px;">코드마스터즈</div><div style="margin-right: 10px;">팀장 노지혜</div> <div>팀원 김홍식 민봉해 박민규 손주형 송현규</div></div>
                <div class="foot_text"><div style="margin-right: 15px;">이메일: aaaaaaaaaa@aaaaa.aaa</div><div>호스팅 제공자: 북마스터커뮤니케이션</div></div>
                <div class="foot_text">충청남도 천안시 동남구 대흥동 134 8층 4강의실(본사)</div>
                <div class="foot_text">ⓒ Bookmaster Communication. All Rights Reserved.</div>
            </div>
            <div class="foot_right">
                <div class="foot_title">고객센터 1588-1234</div>
                <div class="foot_text"><div div style="margin-right: 10px;">충청남도 천안시 동남구 대흥동 134 8층 4강의실</div><div>FAX 000-000-0000</div></div>
                
                <div class="foot_text">
                <a href="Contact_Us_Mainpage.jsp"> 
                <input type="button" value="문의하기" class="foot_btn">
                </a>
                
                <a href="Contact_Us_Mainpage.jsp">
                <input type="button" value="제안하기" class="foot_btn">
                </a>
                
                <a href="Contact_Us_Mainpage.jsp">
                <input type="button" value="FAQ" class="foot_btn">
                </a>
                
                </div>
                
                <div class="foot_text">
                <a href="vistit.jsp">
                <input type="button" value="찾아오시는길" class="foot_btn" style="margin-top: 5px; width: 360px;">
                </a>
                
                </div>
            </div>
        </div>
    </footer>
</body>
</html>