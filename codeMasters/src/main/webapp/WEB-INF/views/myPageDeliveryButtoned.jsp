<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.project.OrderDTO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>마이페이지</title>
    <style>
        @font-face {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2') format('woff2');
            font-weight: 700;
            font-style: normal;
        }
        body * {
            margin: 0;
            font-family: 'Cafe24Supermagic-Bold-v1.0';
        }
        /* 본 컨텐츠 */
        #mypage-contents {
            width: 100%;
            height: 1000px;
            display: flex;
            flex-wrap: wrap; 
        }
        /* 본문 */
        #mypage-box {
            width: 75%;
            height: 100%;
        }
        .contents_title {
            width: 100%;
            border-bottom: 1px solid black;
            font-size: 20px;
            font-weight: bold;
            height: 40px;
            line-height: 40px;
        }
        .title_text {
            margin-left: 2%;
        }
        .content_text{
            width: 80%;
            height: 50px;
            line-height: 30px;
        }
        .content_btn {
            line-height: 40px;
            font-family: 'Cafe24Supermagic-Bold-v1.0';

        }
        .btn1 {
            background-color: #5E5E5E;
            color: white;
            width: 80px;
            height: 30px;
            border-radius: 5px;
            border: 1px solid white;
            text-align: center;
            line-height: 30px;
            font-size: 15px;
        }
        .paging {
            margin: 20px auto auto auto;
            width: 200px;
            height: 30px;
            display: flex;
            justify-content: space-between;
            text-align: center;
        }
        .buttons {
            margin-top: 5px;
            display: flex;
        }
        .buttons .btn1 {
            width: 100px;
            height: 40px;
            line-height: 40px;
        }
        .buttons .paging {
            margin-left: 150px;
        }

        /* 배송조회 */
        #delivery-tracking-contents {
            width: 100%;
            height: 100%;
            display: block;
        }
        #number-tracking {
            margin: 20px;
            width: 100%;
            height: 15%;
        }
        #number-tracking-title {
            font-size: 30px;
            font-weight: bold;
            border-bottom: 2px solid #bbb;
            width: 100%;
        }
        #number-tracking-text {
            margin: 10px;
            font-size: 20px;
        }
        #number-tracking-input-box {
            margin-left: 10px;
            display: flex;
            width: 100%;
            height: 50px;
        }
        #number-tracking-input {
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;
            border: none;
            outline: none;
            width: 400px;
            height: 42px;
            font-size: 30px;
            background-color: rgb(218, 241, 225);
        }
        
        .tracking-btn {
            border: none;
            outline: none;
            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px;
            height: 42px;
            width: 80PX;
        }

        #tracking {
            display: block;
            width: 100%;
            height: 70%;
        }
        .tracking_title {
            margin: 10px;
            width: 100%;
            font-size: 30px;
            font-weight: bold;
            border-bottom: 2px solid #bbb;
        }
        #info {
            display: flex;
            justify-content: space-between;
            
            width: 90%;
            height: 80px;
            margin: 30px;
        }
        .info-contents {
            width: 24%;
        }
        .tracking-info-title {
            font-size: 20px;
            border-bottom: 2px solid gray;
        }
    
    </style>
        
</head>
<body>
    <!-- 헤더 -->
    <%@ include file = "header.jsp" %>
    <div id="hamburger-margin"></div>
    <!-- 본 컨텐츠 -->
    <div id="mypage-contents">
        <!-- 메뉴 -->
        <%@ include file = "myPageMenus.jsp" %>

        <!-- 본문 -->
        <div id="mypage-box">
            <!-- 배송 조회 컨텐츠 -->
            <div id="delivery-tracking-contents">
                <div class="contents_title"><div class="title_text">배송조회</div></div>
                <div id="number-tracking">
                    <div id="number-tracking-title">주문번호 배송조회</div>
                    <div id="number-tracking-text">주문 번호 입력</div>
                    <form action="myPageDeliveryButtoned.jsp" method="get">
	                    <div id="number-tracking-input-box">
	                        <input name="delNum"type="text" id="number-tracking-input">
	                        <div>
	                            <input type="submit" value="조회하기" id="number-tracking-btn" class="tracking-btn">
	                        </div>
	                    </div>
                    </form>
                </div>
                <div id="tracking">
                	<%
                		String num = request.getParameter("delNum");
                		System.out.print(num);
                	%>
                    <div id="tracking_title" class="tracking_title">배송정보</div>
                    <div id="info">
                        <div id="tracking_number" class="info-contents">
                            <div id="tracking_number-title" class="tracking-info-title">운송장 번호</div>
                            <div id="tracking_number-value" class="tracking-info-value"><%=num %></div>
                        </div>
                        <div id="sender" class="info-contents">
                            <div id="sender-title" class="tracking-info-title">보내는 분</div>
                            <div id="sender-value" class="tracking-info-value">크롤링내용(택배회사 크롤링)</div>
                        </div>
                        <div id="receiver" class="info-contents">
                            <div id="receiver-title" class="tracking-info-title">받는 분</div>
                            <div id="receiver-value" class="tracking-info-value">크롤링내용(택배회사 크롤링)</div>
                        </div>
                        <div id="contents_name" class="info-contents">
                            <div id="contents_name-title" class="tracking-info-title">상품 정보</div>
                            <div id="contents_name-value" class="tracking-info-value">크롤링내용(택배회사 크롤링)</div>
                        </div>
                    </div>
                    <div id="tracking_state">
                        <div id="tracking_state-title" class="tracking_title">배송 상태</div>
                            <div id="tracking_state-value" style="margin-left: 30px;">배송상태 내용(택배회사 크롤링)</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="none"></div>
    <%@ include file = "footer.jsp" %>
</body>
    <script>

    </script>

</html>
