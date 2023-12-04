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
        
        #list-management-contents{
            display: block;
            width: 100%;
            height: 100%;
        }
        .list-management-content{
            border-bottom: 1px solid black;
            height: 50px;
            display: flex;
            justify-content: space-between;
        }
        .list-management-content .btn{
            width: 60px;
            height: 30px;
            line-height: 30px;
        }
        #list-management-event-contents {
            display: block;   
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
        .jspaging input {
        	border: 10px;
        	background-color: white;
        	font-family: 'Cafe24Supermagic-Bold-v1.0';
        	font-size: 15px
        }
        .search_btn {
            width: 80px;
            height: 30px;
            line-height: 30px;
        }
        .page input {
        	border: 10px;
        	background-color: white;
        	font-family: 'Cafe24Supermagic-Bold-v1.0';
        	font-size: 15px;
        	margin: 0 auto;
        }
        
        .search {
        	display: flex;
        	justify-content: center;
        	
        }
        
        #search-event-btn input {
       		font-family: 'Cafe24Supermagic-Bold-v1.0';
            background-color: #5E5E5E;
            width: 100px;
            height: 40px;
            border-radius: 5px;
            border: 1px solid white;
            text-align: center;
            line-height: 40px;
            font-size: 15px;
            color: white;
        }


    </style>
        
</head>
<body>
<%
	//model에 넣은 "data" 가져오기
			Map data = (Map) request.getAttribute("data");
			
			int total = (Integer) data.get("total");
			int pageNum = (Integer) data.get("pageNum");
			String searchInput = (String) data.get("event_name");
			// 한번에 보여줄 글의 개수
			int countPerPage = (Integer) data.get("countPerPage");
			
%>
    <%@ include file = "header_manager.jsp" %>

    <div id="manager-contents">
		<%@ include file = "managerMenus.jsp" %>
        <div id="manager-status_announcement">
            <!-- 게시판관리 컨텐츠 -->
            <div id="list-management-contents">
                <div class="contents_title">
                    <form action="/project/managerNotice" method="get">
                        <select name="menu" id="list-select" onchange="this.form.submit()">
                            <option value="event">이벤트</option>
                            <option value="notice">공지사항</option>
                        </select>
                    </form>
                    <div>게시판관리</div>
                </div>
                <div id="list-management-event-contents">
                    <form action="/project/managerEventDelete" method="post">
                	<c:forEach var="event" items="${data.list}">
	                    <div class="list-management-content"><input type="checkbox" name="event_number" value="${event.event_number}">
	                        <div class="content_text">
	                            <div class="content-box_title"><a href="managerEventDetail?event_number=${event.event_number}">${event.event_name}</a></div>
	                            <div class="content-box_date" >${event.event_date}</div>
	                        </div>
	                        <div class="content_btn">
	                            <input type="button" value="수정" class="btn">
	                        </div>
	                    </div>
                   	</c:forEach>
                    
                    <div class="buttons">
                        <div class="btn" id="list-management-checked_delete"><input type="submit" value="선택글 삭제"></div>
                    </form>
                        <div class="btn" id="list-management-content-write"><a href="/project/goEventCreate">글쓰기</a></div>
                   <%
						// 전체 페이지의 수
						// 올림 ( 전체 글의 수 / 한번에 보여줄 글의 수 )
						int totalPaging = (int) Math.ceil( (double)total / countPerPage );
						
						// 한번에 보여줄 페이지의 개수
						int groupCount = 10;
						
						// 현제 페이지가 몇번째 그룹에 있는지
						int position = (int) Math.ceil( (double)pageNum / groupCount );
						
						// 현재 그룹에 첫번째 페이지 번호
						int beginPaging = ((position-1) * groupCount) + 1;
						int endPaging = position * groupCount;
						
						if(endPaging > totalPaging){
							endPaging = totalPaging;
						}
				
						
						if(beginPaging == 1){
							out.println("[이전]");
						} else {
							out.println("<form action='/project/managerEvent' method='post' class='page'><input type='hidden' value="+searchInput+" name='book_name'><input type='hidden' value="+ (beginPaging-1) +" name='pageNum'><input type='submit' value='[이전]'></form>");
						}
					
						for(int i=beginPaging; i<=endPaging; i++){
							if(i == pageNum){
								out.println("<form action='/project/managerEvent' method='post' class='page'><input type='hidden' value="+searchInput+" name='book_name'><input type='hidden' value="+ i +" name='pageNum'><input type='submit' value="+i+" style='font-size: 18px'></form>");
							} else {
								out.println("<form action='/project/managerEvent' method='post' class='page'><input type='hidden' value="+searchInput+" name='book_name'><input type='hidden' value="+ i +" name='pageNum'><input type='submit' value="+i+"></form>");
							}
						}
						
						if(endPaging == totalPaging){
							out.println("[다음]");
						} else {
							out.println("<form action='/project/managerEvent' method='post' class='page'><input type='hidden' value="+searchInput+" name='book_name'><input type='hidden' value="+ (endPaging+1) +" name='pageNum'><input type='submit' value='[다음]'></form>");
						}
					%>
                    <form action="managerEvent" method="post" style="width: 300px">
	                    <div class="search" style="margin-top: 7px;">
	                        <input type="text" id="search-notice" name="event_name" style="height: 20px; margin-top: 15px">
	                    	<div id="search-event-btn"><input type="submit" value="게시글검색"style="height: 40px"></div>
	                    </div>
                    </form>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>