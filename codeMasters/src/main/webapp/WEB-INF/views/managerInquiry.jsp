<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>관리자페이지</title>
    <style>
        body {
            margin: 0;
            width: 1263px;
            font-family: 'Cafe24Supermagic-Bold-v1.0';

        }
        @font-face {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2') format('woff2');
            font-weight: 700;
            font-style: normal;
        }
        #top-header {
            width: 100%;
            height: auto;
            display: inline-block;
            text-align: center;

            background-color: white;
            border-bottom: 1px solid black;
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
            width: 192px;
            display: flex;
            top: 70px;
            left: 1000px;
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
        .btn {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            background-color: #5E5E5E;
            color: white;
            width: 100px;
            height: 40px;
            border-radius: 5px;
            border: 1px solid white;
            text-align: center;
            line-height: 40px;
            font-size: 15px;
        }
        #manager-contents {
            width: 100%;
            height: 1000px;
            display: flex;
            flex-wrap: wrap; 
        }
        #home {
            margin-top: 20%;
        }
        #manager-status_announcement {
            width: 75%;
            height: 100%;
        }
        #home-contents {
            width: 100%;
            height: 100%;
            display: none;
        }
        #manager-status {
            width: 100%;
            height: 60%;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        #manager-announcement {
            margin-top: 30px;
            width: 100%;
            height: 35%;
        }
        #box-title {
            width: 100%;
        }
        .box {
            background-color: rgb(218, 241, 225);
            margin: 2.5% 2.5%;
            width: 40%;
            height: 40%;
            text-align: center;
        }
        .box-num {
            margin-top: 70px;
            font-size: 40px;
            font-weight: bold;
        }
        .box-text {
            margin-top: 40px;
            font-size: 25px;
            font-weight: bold;
            color: rgb(41, 169, 255);
        }
        .contents_title {
            display: flex;
            width: 1010px;
            border-bottom: 1px solid black;
            font-size: 20px;
            font-weight: bold;
            height: 40px;
            line-height: 40px;
        }
        .content_text{
            width: 80%;
        }
        .content-box_title{
            margin-top: 3px;
            margin-bottom: 5px;
        }
        .content-box_date{

        }
        .content_btn {
            line-height: 40px;
        }
        
        #inquiry-management-contents{
            display: block;
            width: 100%;
            height: 100%;
        }
        .inquiry-management-content{
            border-bottom: 1px solid black;
            height: 50px;
            display: flex;
            justify-content: space-between;
        }
        .inquiry-management-content .btn{
            width: 60px;
            height: 30px;
            line-height: 30px;
        }

        .buttons{
            margin-top: 5px;
            display: flex;
        }
        .paging {
            margin: 20px auto auto 20%;
            width: 200px;
            height: 30px;
            display: flex;
            justify-content: space-between;
            text-align: center;
        }
        .search_btn {
            width: 80px;
            height: 30px;
            line-height: 30px;
        }


    </style>
        
</head>
<body>
    <%@ include file = "header_manager.jsp" %>

    <div id="manager-contents">
        <%@ include file = "managerMenus.jsp" %>
        <!-- 홈 컨텐츠(최초실행) -->
        <div id="manager-status_announcement">
            <!-- 문의관리 컨텐츠 -->
            <div id="inquiry-management-contents">
                <div class="contents_title">문의관리</div>
                <div class="inquiry-management-content"><input type="checkbox">
                    <div class="content_text" style="width: 92.09%;">
                        <div class="content-box_title">문의1</div>
                        <div class="content-box_date" >날짜</div>
                    </div>
                </div>

                <div class="buttons">
                    <div class="btn" id="inquiry-management-checked_delete">선택글 삭제</div>
                    <div class="btn" id="inquiry-management-content-write">글쓰기</div>
                    <div class="paging" id="inquiry-management-content-paging">
                        <div><</div>
                        <div>1</div>
                        <div>2</div>
                        <div>3</div>
                        <div>4</div>
                        <div>5</div>
                        <div>></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>