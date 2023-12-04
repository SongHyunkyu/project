<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        
        #order-management-contents{
            display: block;
            width: 100%;
            height: 100%;
        }
        .order-management-content{
            border-bottom: 1px solid black;
            height: 50px;
            display: flex;
            justify-content: space-between;
        }
        .order-management-content .btn{
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
        .contents_title {
            display: flex;
            width: 1010px;
            border-bottom: 1px solid black;
            font-size: 20px;
            font-weight: bold;
            height: 40px;
            line-height: 40px;
        }


    </style>
    
</head>
<body>
    <%@ include file = "header_manager.jsp" %>

    <div id="manager-contents">
        <%@ include file = "managerMenus.jsp" %>
        <div id="manager-status_announcement">
            <!-- 주문관리 컨텐츠 -->
            <div id="order-management-contents">
                <div class="contents_title">주문관리</div>
                <div class="order-management-content"><input type="checkbox">
                    <div class="content_text" id="order-management-contents-1">
                        <div class="content-box_title">게시글1</div>
                        <div class="content-box_date" >날짜</div>
                    </div>
                    <div class="content_btn">
                        <input type="button" value="수정" class="btn">
                    </div>
                </div>
                <div class="order-management-content"><input type="checkbox">
                    <div class="content_text" id="order-management-contents-2">
                        <div class="content-box_title">게시글2</div>
                        <div class="content-box_date" >날짜</div>
                    </div>
                    <div class="content_btn">
                        <input type="button" value="수정" class="btn">
                    </div>
                </div>
                <div class="order-management-content"><input type="checkbox">
                    <div class="content_text" id="order-management-contents-3">
                        <div class="content-box_title">게시글3</div>
                        <div class="content-box_date" >날짜</div>
                    </div>
                    <div class="content_btn">
                        <input type="button" value="수정" class="btn">
                    </div>
                </div>
                <div class="order-management-content"><input type="checkbox">
                    <div class="content_text" id="order-management-contents-4">
                        <div class="content-box_title">게시글4</div>
                        <div class="content-box_date" >날짜</div>
                    </div>
                    <div class="content_btn">
                        <input type="button" value="수정" class="btn">
                    </div>
                </div>
                <div class="order-management-content"><input type="checkbox">
                    <div class="content_text" id="order-management-contents-5">
                        <div class="content-box_title">게시글5</div>
                        <div class="content-box_date" >날짜</div>
                    </div>
                    <div class="content_btn">
                        <input type="button" value="수정" class="btn">
                    </div>
                </div>
                <div class="order-management-content"><input type="checkbox">
                    <div class="content_text" id="order-management-contents-6">
                        <div class="content-box_title">게시글6</div>
                        <div class="content-box_date" >날짜</div>
                    </div>
                    <div class="content_btn">
                        <input type="button" value="수정" class="btn">
                    </div>
                </div>
                <div class="order-management-content"><input type="checkbox">
                    <div class="content_text" id="order-management-contents-7">
                        <div class="content-box_title">게시글7</div>
                        <div class="content-box_date" >날짜</div>
                    </div>
                    <div class="content_btn">
                        <input type="button" value="수정" class="btn">
                    </div>
                </div>
                <div class="order-management-content"><input type="checkbox">
                    <div class="content_text" id="order-management-contents-8">
                        <div class="content-box_title">게시글8</div>
                        <div class="content-box_date" >날짜</div>
                    </div>
                    <div class="content_btn">
                        <input type="button" value="수정" class="btn">
                    </div>
                </div>
                <div class="order-management-content"><input type="checkbox">
                    <div class="content_text" id="order-management-contents-9">
                        <div class="content-box_title">게시글9</div>
                        <div class="content-box_date" >날짜</div>
                    </div>
                    <div class="content_btn">
                        <input type="button" value="수정" class="btn">
                    </div>
                </div>
                <div class="order-management-content"><input type="checkbox">
                    <div class="content_text" id="order-management-contents-10">
                        <div class="content-box_title">게시글10</div>
                        <div class="content-box_date" >날짜</div>
                    </div>
                    <div class="content_btn">
                        <input type="button" value="수정" class="btn">
                    </div>
                </div>
                
                <div class="buttons">
                    <div class="btn" id="order-checked_delete">선택글 삭제</div>
                    <div class="btn" id="order-management-content-write">글쓰기</div>
                    <div class="paging" id="order-management-content-paging">
                        <div><</div>
                        <div>1</div>
                        <div>2</div>
                        <div>3</div>
                        <div>4</div>
                        <div>5</div>
                        <div>></div>
                    </div>
                    <div class="search" style="margin-top: 7px;">
                        <input type="text" id="search-order" >
                    </div>
                    <div class="btn search_btn" id="search-order-btn">주문검색</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>