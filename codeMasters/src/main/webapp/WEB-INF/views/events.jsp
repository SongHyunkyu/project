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
    <title>이벤트페이지</title>
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
        /* 헤더 */

        /* 본문 */
        .menu {
            margin-top: 1%;
            font-size: 25px;
            font-weight:bold
        }
        #ad-1 {
            margin: 0 auto;
            margin-bottom: 10px;
            width: 90%;
            height: auto;
            text-align: center;
            
            overflow: hidden;
        }
        #ad-1 img {
            width: 100%;
            height: auto;
        }
        #events {
            width: 70%;
            margin: 30px auto;
        }
        @media screen and (max-width:700px) {
            #events {
                width: 95%;
                margin: 0 auto;
            }
            
        }
        .event {
            width: 100%;
            margin: auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between
        }
        .event-img {
            width: 100%;
            height: 100px;
            border: 1px solid #6b6b6b;
            border-radius: 5px;
            overflow: hidden;
        }
        .event-img img {
            width: 100%;

        }
        .event-name {
            width: 55%;
            height: 50px;
            font-size: 20px;
            font-weight: bold;
            line-height: 40px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .event-time {
            width: 25%;
            height: 50px;
            line-height: 40px;
        }
        .event-post_date {
            width: 15%;
            height: 50px;
            text-align: right;
            line-height: 40px;
            margin-right: 10px;
        }
        @media screen and (max-width: 1050px) {
            .event-time {
                width: 40%;
                height: 50px;
                line-height: 40px;
                text-align: right;
            }
            .event-post_date {
                display: none;
            }
        }
        @media screen and (max-width: 650px) {
            .event-name {
                width: 40%;
            }
            .event-time {
                width: 60%;
                line-height: 40px;
                text-align: right;
            }
        }
        @media screen and (max-width: 490px) {
            .event {
                margin-top: 10px;
                border-bottom: 1px solid black;
            }
            .event-name {
                width: 100%;
                height: 30px;
                font-size: 20px;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
            }
            .event-time {
                width: 60%;
                height: 25px;
                line-height: 25px;
                text-align: left;
            }
            .event-post_date {
                width: 40%;
                height: 25px;
                display: block;
                line-height: 25px;
                text-align: left;
            }
        }
        #paging {
            margin: 20px auto 50px auto;
            width: 200px;
            height: 30px;
            display: flex;
            text-align: center;
            justify-content: center;
        }
        #paging form {
        	margin: 10px;
        }
        .jspaging input {
        	border: 0px;
        	background-color: white;
        	font-family: 'Cafe24Supermagic-Bold-v1.0';
        	font-size: 15px
        }
        #up {
            position: fixed;
            right: 10px;
            bottom: 30px;
        }
        
        /* 팝업 */
        .background {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 110vh;
            background-color: rgba(0, 0, 0, 0.3);
            z-index: 1000;
            overflow: auto;

            z-index: -1;
            opacity: 0;
        }

        .show {
            opacity: 1;
            z-index: 1000;
            transition: all .5s;
        }

        .window {
            position: relative;
            width: 100%;
            height: 100%;
        }

        .popup {
            position: absolute;
            top: 500px;
            left: 50%;
            transform: translate(-50%, -40%);
            background-color: #ffffff;
            box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
            
            /* 임시 지정 */
            width: 1000px;
            height: auto;
            
            /* 초기에 약간 아래에 배치 */
            transform: translate(-50%, -40%);
        }
        @media screen and (max-width: 1000px) {
            .popup {
                width: 90%;
                top: 400px;
            }
        }
        
        .show .popup {
            transform: translate(-50%, -50%);
            transition: all .5s;
        }
        .close {
            position: fixed;
            margin-right: 30px;
            top: 30px;
            right: 15px;
            z-index: 100;
        }
        .close img {
            width: 30px;
            height: 30px;
        }

        .event-popup {
            width: 100%;
            height: auto;
            display: flex;
        }
        .event-popup-img {
            width: 60%;
        }
        .event-popup-img img {
            width: 100%;
            height: 100%;
        }
        .event-popup-contents {
            width: 40%;
        }
        @media screen and (max-width: 850px) {
            .popup {
                width: 90%;
                min-width: 700px;
                height: 600px;
                top: 450px;
            }
            .event-popup-img {
                width: 40%;
                min-width: 300px;
                height: auto;
            }
            .event-popup-contents {
                width: 60%;
            }
            
        }
        @media screen and (max-width: 700px) {
            .event-popup {
                flex-wrap: wrap;
            }
            .popup {
                width: 90%;
                min-width: 0;
                height: 600px;
                top: 350px;
            }
            .event-popup-img {
                width: 100%;
                min-width: 0;
                height: auto;
            }
            .event-popup-contents {
                width: 100%;
                height: 700px;
                background-color: white;
            }
        }
        @media screen and (max-width: 490px) {
            .event-popup-contents {
                height: 800px;
            }
        }
        .event-popup-name {
            margin: 10px 30px;
            font-size: 30px;
        }
        .event-popup-time {
            margin: 10px 30px;
        }
        .event-popup-post_date {
            margin: 10px 30px;
        }
        .event-popup-detail {
            margin: 10px 30px;
            background-color: white;
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
        .page input {
        	border: 10px;
        	background-color: white;
        	font-family: 'Cafe24Supermagic-Bold-v1.0';
        	font-size: 15px;
        	margin: 0 auto;
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
 	<%@include file="header.jsp" %>
    <div id="hamburger-margin"></div>

    <div id="ad-1"><img src="resources/eventimg/event.png"></div>
    <div id="events">
        <!--이벤트 목록
        foreach하나는 event목록 
        다른 하나는 pop을 묶고
        function과 onlick의 i는 event_number로 같이 묶기--> 
        <c:forEach var="dto" items="${data.list}" varStatus="i">
      		<div class="event" onclick="javascript:show${i.count}(this)">
            	<div class="event-img">
            		<img src="${dto.event_img}" onerror="this.style.display='none'">
            	</div>
           		<div class="event-name">
             		${dto.event_name}
            	</div>
         		<div class="event-time">
             		참여 기간: ${dto.event_period_start} ~ ${dto.event_period_end}
           		</div>
          		<div class="event-post_date">
             	작성일: ${dto.event_date}
              </div>
        	</div>
        </c:forEach> 

    </div>
    <div id="paging">
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
							out.println("<form action='/project/goEvents' method='post' class='page'><input type='hidden' value="+searchInput+" name='book_name'><input type='hidden' value="+ (beginPaging-1) +" name='pageNum'><input type='submit' value='[이전]'></form>");
						}
					
						for(int i=beginPaging; i<=endPaging; i++){
							if(i == pageNum){
								out.println("<form action='/project/goEvents' method='post' class='page'><input type='hidden' value="+searchInput+" name='book_name'><input type='hidden' value="+ i +" name='pageNum'><input type='submit' value="+i+" style='font-size: 18px'></form>");
							} else {
								out.println("<form action='/project/goEvents' method='post' class='page'><input type='hidden' value="+searchInput+" name='book_name'><input type='hidden' value="+ i +" name='pageNum'><input type='submit' value="+i+"></form>");
							}
						}
						
						if(endPaging == totalPaging){
							out.println("[다음]");
						} else {
							out.println("<form action='/project/goEvents' method='post' class='page'><input type='hidden' value="+searchInput+" name='book_name'><input type='hidden' value="+ (endPaging+1) +" name='pageNum'><input type='submit' value='[다음]'></form>");
						}
					%>   
    
    </div>
    <a id="up" href="#">
        위로
    </a>

    <div id="pops">
	    <!-- 팝업 -->
	    <c:forEach var="dto" items="${data.list}" varStatus="i">
                    <div id="pop${i.count}">
                        <div class="background">
                            <div class="window">
                                <div class="close" onclick="javascript:close${i.count}(this)"><img src="resources/eventimg/X.png"></div>
                                <div class="popup">
                                    <div class="event-popup">
                                        <div class="event-popup-img">
                                            <img src="${dto.event_img}" onerror="this.style.display='none'">
                                        </div>
                                        <div class="event-popup-contents">
                                            <div class="event-popup-name">
                     							${dto.event_name}
                                            </div>
                                            <div class="event-popup-time">
                                                참여 기간: ${dto.event_period_start} ~ ${dto.event_period_end}
                                            </div>
                                            <div class="event-popup-post_date">
                                                작성일: ${dto.event_date}
                                            </div>
                                            <div class="event-popup-detail">
                                                ${dto.event_detail}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
         </c:forEach>
    </div>
	    <div class="none"></div>
 	<%@include file="footer.jsp" %>
</body>
<script>
	<%
		for ( int i = 0; i < 10; i++ ) {%>
		    function show<%=i%> () {
		        document.querySelector("#pop<%=i%> .background").className = "background show";
		    }
		    function close<%=i%> () { 
		        document.querySelector("#pop<%=i%> .background").className = "background";
		    }
		<%}%>
		    


</script>
</html>