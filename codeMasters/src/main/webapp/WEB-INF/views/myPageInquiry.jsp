<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

        /* 문의내역 */
        #inquiry-details-contents {
            width: 100%;
            height: 100%;
            display: block;
        }
        #inquiry-details-contents{
            display: block;
            width: 100%;
            height: 100%;
        }
        #inquiry-details-lists {
            width: 100%;
            height: 100%;
        }
        .inquiry-details-content{
            border-bottom: 1px solid black;
            height: auto;
            display: flex;
            justify-content: space-between;
        }
        .inquiry-details-text {
            display: flex;
        }
        .answered {
            width: 90%;
            font-size: 0px;
            margin-top: -5px;
        }
        .inquiry-details-date{
            width: 20%;
            text-align: right;
            margin-top: -5px;
        }

        .inquiry-details-list{
            width: 100%;
            height: 100%;
            display: none;
        }
        #inquiry-paging {
            margin: 20px auto 50px auto;
            width: 200px;
            height: 30px;
            display: flex;
            text-align: center;
            justify-content: center;
        }
        #inquiry-paging form {
        	margin: 10px;
        }
        .jspaging input {
        	border: 0px;
        	background-color: white;
        	font-family: 'Cafe24Supermagic-Bold-v1.0';
        	font-size: 15px
        }
        .Q{
            margin-left: 10px;
            font-size: 60px;
        }
        .inquiry-details-list-inquiry{
            margin-left: 10px;
            margin: 0 auto;
            width: 90%;
            height: 200px;
        }
        .A{
            margin-left: 15px;
            border-top: 2px solid gray;
            font-size: 60px;
        }
        .inquiry-details-list-answer{
            margin-left: 10px;
            margin: 0 auto;
            width: 90%;
            height: 200px;
        }
        .inquiry-details-list-btn{
            width: 100%;
            height: 40px;
        }
        .inquiry-exit{
            width: 80px;
            height: 30px;
        }
    </style>
    <script>
    <%
		String pageNum = request.getParameter("page");
		if (pageNum == null) {
			pageNum = "1";
		}
		int page1 = Integer.parseInt(pageNum);
	%>
	page = <%=page1%>
	
	let last_inquiry = page*10;
	
	window.addEventListener("load", function(){
	    bind();
	})
	function bind(){
		// 문의글 목록
		let xhr = new XMLHttpRequest();
		xhr.open("get", "myPageInquiry.json");
		xhr.send();
		xhr.onload = function(){
			let data = JSON.parse(xhr.responseText);
			data.reverse();
			if (last_inquiry > data.length) {
				last_inquiry = data.length;
			}
	    	let html1 = ``;
	         for(let i = (page-1)*10; i < last_inquiry; i++){
	            let json = data[i];
	            html1+= '<div class="inquiry-details-content"><input type="checkbox">';
	            html1+= '    <div class="content_text" id="inquiry-details-contents-'+(i+1)+'">';
	            html1+= '        <div class="inquiry-details-title">'+json.title+'</div>';
	            html1+= '        <div class="inquiry-details-text">';
	            html1+= '            <div class="answered">답변완료</div>';
	            html1+= '            <div class="inquiry-details-date">날짜: '+json.created_date+'</div>';
	            html1+= '        </div>';
	            html1+= '    </div>';
	            html1+= '    <div class="content_btn">';
	            html1+= '        <input type="button" value="수정" class="btn1">';
	            html1+= '    </div>';
	            html1+= '</div>';
	          	};  
	            
	            document.querySelector("#inquiry-details-listss").insertAdjacentHTML('beforeend', html1);
	            // 문의내역 클릭이벤트
                // jsp로 구현
	            // 문의글 보기
	            document.querySelector("#inquiry-details-contents-1").addEventListener("click",function(){
	                document.querySelector("#inquiry-details-lists").style.display = 'none';
	                document.querySelector(".inquiry-details-list").style.display = 'block';
	            })
	            // 문의글 나가기
	            document.querySelector(".inquiry-exit").addEventListener("click",function(){
	                document.querySelector("#inquiry-details-lists").style.display = 'block';
	                document.querySelector(".inquiry-details-list").style.display = 'none';
	            })
		}
    	// 문의글 페이징
    	let xhr2 = new XMLHttpRequest();
    	xhr2.open("get", "myPageInquiry.json");
    	xhr2.send();
    	xhr2.onload = function(){
    		let html2 = '';
    		let data = JSON.parse(xhr2.responseText);
    		
    		
    		let n = Math.trunc(data.length / 10);
    		if ( data.length % 10 != 0) {
    			n++;
    		}
    		if ( n <= 5 ) {
    			for (let i = 0; i < n; i++) {
    				html2 +="<form action='myPageInquiry.jsp' class='jspaging'><input type='hidden' name='page' id='p"+(i+1)+"' value='"+(i+1)+"'><input class='ip' type='submit' value='"+(i+1)+"'></form>";
    			}
    		} else if ( n > 5 ) {
    			if ( page <= 3 ) {
    				for (let i = 0; i < 5; i++) {
        				html2 +="<form action='myPageInquiry.jsp' class='jspaging'><input type='hidden' name='page' id='p"+(i+1)+"' value='"+(i+1)+"'><input class='ip' type='submit' value='"+(i+1)+"'></form>";
        			}
        			html2 += "<form action='myPageInquiry.jsp' class='jspaging'><input type='hidden' name='page' id='p+1' value='"+(page+1)+"'><input class='ip' type='submit' value='>'></form>";
    			} else if ( page > 3 && page < n-3) {
    				html2 +="<form action='myPageInquiry.jsp' class='jspaging'><input type='hidden' name='page' id='p-1' value='"+(page-1)+"'><input class='ip' type='submit' value='<'></form>";
    				for (let i = page-3; i < page+2; i++) {
        				html2 +="<form action='myPageInquiry.jsp' class='jspaging'><input type='hidden' name='page' id='p"+(i+1)+"' value='"+(i+1)+"'><input class='ip' type='submit' value='"+(i+1)+"'></form>";
    				}
        			html2 += "<form action='myPageInquiry.jsp' class='jspaging'><input type='hidden' name='page' id='p+1' value='"+(page+1)+"'><input class='ip' type='submit' value='>'></form>";
    			} else if ( page >= n-3 ) {
    				html2 +="<form action='myPageInquiry.jsp' class='jspaging'><input type='hidden' name='page' id='p-1' value='"+(page-1)+"'><input class='ip' type='submit' value='<'></form>";
    				for (let i = n-5; i < n; i++) {
        				html2 +="<form action='myPageInquiry.jsp' class='jspaging'><input type='hidden' name='page' id='p"+(i+1)+"' value='"+(i+1)+"'><input class='ip' type='submit' value='"+(i+1)+"'></form>";
        			}
    			}
    		}

    		
			
            
            document.querySelector("#inquiry-paging").innerHTML = html2;
	        // 문의내역 페이징 클릭이벤트
    	}
	}
	
    </script>
        
</head>
<body>
    <%@ include file = "header.jsp" %>
    <div id="hamburger-margin"></div>
    <!-- 본 컨텐츠 -->
    <div id="mypage-contents">
        <!-- 메뉴 -->
		<%@ include file = "myPageMenus.jsp" %>
        <!-- 본문 -->
        <div id="mypage-box">
            <!-- 문의 내역 컨텐츠 -->
            <div id="inquiry-details-contents">
                <div class="contents_title"><div class="title_text">문의내역</div></div>
                <div id="inquiry-details-lists">
                	<div id="inquiry-details-listss">
	                    <!-- 문의글 목록 -->
	                 </div>
	                 <div id="inquiry-paging">
	                 	<!-- 문의글 페이징 -->
	                 </div>
                </div>

                <!-- 문의글 내용(문의글 클릭) -->
                <div class="inquiry-details-list">
                    <div class="Q">Q.</div>
                    <div class="inquiry-details-list-inquiry">문의 내용</div>
                    <div class="A">A.</div>
                    <div class="inquiry-details-list-answer">답변 내용</div>
                    <div class="inquiry-details-list-btn">
                        <input type="button" value="목록으로" class="inquiry-exit">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="none"></div>
    <%@ include file = "footer.jsp" %>
</body>
</html>