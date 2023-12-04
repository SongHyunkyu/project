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
        #userName {
        	font-size: 18px;
        	height: 20px;
        	margin-left: 10px;
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
        /* 구매내역 */
        #purchase-history-contents {
            width: 100%;
            height: 100%;
            display: block;
        }
        .purchase-history-content {
            border-bottom: 1px solid black;
            width: 95%; 
            height: 15%;
            margin: 2% auto;
            display: flex;
            justify-content: space-between;
        }
        .purchase-history-content-img {
            width: 150px;
        }
        .purchase-history-content-img img {
            width: 100%;
        }
        .purchase-history-content-box {
            width: 50%;
        }
        .purchase-history-content-title {
            margin: 20px 10px;
            font-size: 18px;
            font-weight: bold;
        }
        .purchase-history-content-price {
            margin: 70px 10px auto 10px;
            display: block;
            justify-content: space-between;
        }

        .price-text {
            font-weight: bold;
        }
        .purchase-history-content-deliver-state {
            width: 30%;
            text-align: right;
        }
        .ing {
            margin: 50px 20px;
            font-size: 25px;
            font-weight: bold;
        }
        .ed {
            margin: 40px 20px;
            font-size: 25px;
            font-weight: bold;
            display: flex;
        }
        .ed-date {
            margin-top: 20px;
            font-size: 15px;
            font-weight: lighter;
        }
                
        /* 구매내역 팝업 */
                
        .background {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100vh;
            background-color: rgba(0, 0, 0, 0.3);
            
            overflow: auto;
            z-index: 1000;

            z-index: -1;
            opacity: 0;
        }

        .show {
            opacity: 1;
            z-index: 1000;
            transition: all .3s;
        }

        .window {
            position: relative;
            width: 100%;
            height: 100%;
        }

        .popup {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -40%);
            background-color: #ffffff;
            box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
            
            /* 임시 지정 */
            width: 90%;
            height: 850px;

        }

        .show .popup {
            transition: all .3s;
        }
        .close1 {
            position: fixed;
            margin-right: 30px;
            top: 30px;
            right: 15px;
            z-index: 100;
        }
        .close1 img {
            width: 30px;
            height: 30px;
        }
        .close2 {
            position: fixed;
            margin-right: 30px;
            top: 30px;
            right: 15px;
            z-index: 100;
        }
        .close2 img {
            width: 30px;
            height: 30px;
        }
        .close3 {
            position: fixed;
            margin-right: 30px;
            top: 30px;
            right: 15px;
            z-index: 100;
        }
        .close3 img {
            width: 30px;
            height: 30px;
        }
        .close4 {
            position: fixed;
            margin-right: 30px;
            top: 30px;
            right: 15px;
            z-index: 100;
        }
        .close4 img {
            width: 30px;
            height: 30px;
        }
        .close5 {
            position: fixed;
            margin-right: 30px;
            top: 30px;
            right: 15px;
            z-index: 100;
        }
        .close5 img {
            width: 30px;
            height: 30px;
        }
        .event-popup {
            width: 100%;
            height: 100%;
        }
        .over-background {
            background-color: white;
        }
        .purchase-history-content-book {
            display: flex;
            border: 1px solid black;
            margin: 10px auto;
            width: 90%;
            height: 150px;
        }
        .purchase-history-content-book-img {
            width: 100px;
            border: 1px solid black;
        }
        .purchase-history-content-book-text {
            width: 70%;
        }
        .purchase-history-content-book-title {
            width: 100%;
            height: 20%;
            font-size: 20px;
            overflow:hidden;
            text-overflow:ellipsis;
            white-space: nowrap;
        }
        .purchase-history-content-book-content {
            width: 100%;
            height: 50%;
            overflow:hidden;
            text-overflow:ellipsis;
            word-break: break-word;
            display: -webkit-box; -webkit-line-clamp: 4; -webkit-box-orient: vertical;
            border-bottom: 1px solid black;
        }
        .purchase-history-content-book-price {
            width: 100%;
            height: 20%;
            margin-top: 5px;
        }
        @media screen and (max-width: 490px){

            .popup {
                width: 90%;
                height: 850px;
    
            }
    
            .event-popup {
                width: 100%;
                height: 100%;
            }
            .over-background {
                background-color: white;
            }
            .purchase-history-content-book {
                display: flex;
                border: 1px solid black;
                margin: 10px auto;
                width: 90%;
                height: 210px;
                flex-wrap: wrap;
            }
            .purchase-history-content-book-img {
                width: 140px;
                height: 210px;
                border: 1px solid black;
            }
            .purchase-history-content-book-text {
                width: 50%;
            }
            .purchase-history-content-book-title {
                width: 100%;
                height: 5%;
            }
            .purchase-history-content-book-content {
                width: 100%;
                height: 63%;
                display: -webkit-box; -webkit-line-clamp: 7; -webkit-box-orient: vertical;
                border-bottom: 1px solid black;
            }
            .purchase-history-content-book-price {
                height: 10%;
            }
            
        }
    
    </style>
    <script>
        let page = 1;

        let last_purchase = page*4;

        window.addEventListener("load", function(){
            bind();
        })

        function bind(){
            // 문의글 목록
            let xhr = new XMLHttpRequest();
            xhr.open("get", "myPagePurchase.json");
            xhr.send();
            xhr.onload = function(){
                let data = JSON.parse(xhr.responseText);	
                data.reverse();	
                if (last_purchase > data.length) {
                    last_purchase = data.length;
                }
                console.log(data);
                let html = '';
                 for(let i = (page-1)*4; i < page*4; i++){
                    let json = data[i];

                    html+= '<div class="purchase-history-content" id="purchase-history-content'+(i+1)+'">';
                    html+= '    <div class="purchase-history-content-img">';
                    html+= '        <img src="img/noun-book-1980248.png">'; // 책 정보 db에서 가져옴
                    html+= '    </div>';
                    html+= '    <div class="purchase-history-content-box">';
                    html+= '        <div class="purchase-history-content-title">'+json.title+'</div>';
                    html+= '        <div class="purchase-history-content-price">';
                    html+= '            <div class="price-text">총 주문 금액 : </div>';
                    html+= '            <div class="price-num">'+json.price+'원</div>';
                    html+= '        </div>';
                    html+= '    </div>';
                    html+= '    <div class="purchase-history-content-deliver-state">';
                    html+= '        <div class="ing" id="ing'+(i+1)+'">배송중</div>';
                    html+= '        <div class="ed" id="ed'+(i+1)+'">';
                    html+= '            배송완료';
                    html+= '            <div class="ed-date" id="ed-date'+(i+1)+'">'+json.delivery_date+'</div>';
                    html+= '        </div>';
                    html+= '    </div>';
                    html+= '</div>';
                };  
                    
                document.querySelector("#purchase-history-lists").innerHTML = html;
                

            }
            let xhr1 = new XMLHttpRequest();
            xhr1.open("get", "myPagePurchase.json");
            xhr1.send();
            xhr1.onload = function(){
                let data = JSON.parse(xhr1.responseText);	
                data.reverse();	
                if (last_purchase > data.length) {
                    last_purchase = data.length;
                }
                console.log(data);
                let html = '';
                 for(let i = (page-1)*4; i < page*4; i++){
                    let json = data[i];

                    html+= '<div id="pop'+(i+1)+'">';
                    html+= '    <div class="background">';
                    html+= '        <div class="window">';
                    html+= '            <div class="close'+(i+1)+'"><img src="evt-img/X.png"></div>';
                    html+= '            <div class="popup">';
                    html+= '                <div class="event-popup">';
                    html+= '                    <div class="over-background">';
                    html+= '                        <div class="ing" id="ing'+(i+1)+'">배송중</div>';
                    html+= '                        <div class="ed" id="ed'+(i+1)+'" style="width: 100%;">';
                    html+= '                            <div>배송완료</div>';
                    html+= '                            <div class="ed-date" id="ed-date'+(i+1)+'">배송일: 1234-12-12</div>';
                    html+= '                        </div>';
                    html+= '                        <div class="purchase-history-content-price" style="border-bottom: 1px solid black;">';
                    html+= '                            <div class="price-text">총 주문 금액 : </div>';
                    html+= '                            <div class="price-num">123,123,123원</div>';
                    html+= '                        </div>';
                    html+= '                        <div class="purchase-history-content-books">';
                    html+= '                            <div class="purchase-history-content-book">';
                    html+= '                                <div class="purchase-history-content-book-img">사진</div>';
                    html+= '                                <div class="purchase-history-content-book-text">';
                    html+= '                                    <div class="purchase-history-content-book-title">책 제목</div>';
                    html+= '                                    <div class="purchase-history-content-book-content">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor fugiat quam doloribus facere cum beatae natus reiciendis? Facilis nulla vero accusantium veniam modi, porro iste cumque aperiam, esse illum tempore.</div>';
                    html+= '                                    <div class="purchase-history-content-book-price">책 가격</div>';
                    html+= '                                </div>';
                    html+= '                            </div>';
                    html+= '                            <div class="purchase-history-content-book">';
                    html+= '                                for문으로 구매한 책 종류 수 만큼 반복';
                    html+= '                                ...';
                    html+= '                            </div>';
                    html+= '                            <div class="purchase-history-content-book">';
                    html+= '                                ...';
                    html+= '                            </div>';
                    html+= '                            <div class="purchase-history-content-book">';
                    html+= '                                ...';
                    html+= '                            </div>';
                    html+= '                            <div class="purchase-history-content-book">';
                    html+= '                                ...';
                    html+= '                            </div>';
                    html+= '                            <div class="purchase-history-content-book">';
                    html+= '                                ...';
                    html+= '                            </div>';
                    html+= '                            <div class="purchase-history-content-book">';
                    html+= '                                ...';
                    html+= '                            </div>';
                    html+= '                            <div class="purchase-history-content-book">';
                    html+= '                                ...';
                    html+= '                            </div>';
                    html+= '                            <div class="purchase-history-content-book">';
                    html+= '                                ...';
                    html+= '                            </div>';
                    html+= '                            <div class="purchase-history-content-book">';
                    html+= '                                ...';
                    html+= '                            </div>';
                    html+= '                            <div class="purchase-history-content-book">';
                    html+= '                                ...';
                    html+= '                            </div>';
                    html+= '                        </div>';
                    html+= '                    </div>';
                    html+= '                </div>';
                    html+= '            </div>';
                    html+= '        </div>';
                    html+= '    </div>';
                    html+= '</div>';
                };
                
                document.querySelector("#pops").innerHTML = html;
                // 구매내역 클릭이벤트
                // 팝업 (구매내역) function, 페이징 for문은 자바사용
                function show1 () {
                    document.querySelector("#pop1 .background").className = "background show";
                }
                function close1 () { 
                    document.querySelector("#pop1 .background").className = "background";
                }
                document.querySelector("#purchase-history-content1").addEventListener('click', show1);
                document.querySelector(".close1").addEventListener('click', close1);
    
                function show2 () {
                    document.querySelector("#pop2 .background").className = "background show";
                }
                function close2 () { 
                    document.querySelector("#pop2 .background").className = "background";
                }
                document.querySelector("#purchase-history-content2").addEventListener('click', show2);
                document.querySelector(".close2").addEventListener('click', close2);
    
                function show3 () {
                    document.querySelector("#pop3 .background").className = "background show";
                }
                function close3 () { 
                    document.querySelector("#pop3 .background").className = "background";
                }
                document.querySelector("#purchase-history-content3").addEventListener('click', show3);
                document.querySelector(".close3").addEventListener('click', close3);
    
                function show4 () {
                    document.querySelector("#pop4 .background").className = "background show";
                }
                function close4 () { 
                    document.querySelector("#pop4 .background").className = "background";
                }
                document.querySelector("#purchase-history-content4").addEventListener('click', show4);
                document.querySelector(".close4").addEventListener('click', close4);
                                
                // jsp에서 사용 배송중 배송완료 구분
                <%
                  	String spage = request.getParameter("page");
                    if (spage == null) {
                        spage = "1";
                    }
                    int ipage = Integer.parseInt(spage);
                    for (int i = (ipage-1)*4; i < ipage*4; i++) {%>
                    	json = data[<%=i%>];
                        if (json.delivery_date == "") {
                            document.querySelector("#ing<%=i+1%>").style.display = 'block';
                            document.querySelector("#ed<%=i+1%>").style.display = 'none';
                        } else {
                            document.querySelector("#ing<%=i+1%>").style.display = 'none';
                            document.querySelector("#ed<%=i+1%>").style.display = 'block';
                        }
                    <%}
                %>	
            }
            
        }
    </script>
        
</head>
<body>
	<%@ include file = "header.jsp" %>
    <div id="hamburger-margin"></div>
    <div id="userName">
    <%
		MemberDTO user1 = (MemberDTO) session.getAttribute("user");
    %>
    <%= user1.getMname() %>님의 마이페이지입니다.
    </div>
    </div>
    <!-- 본 컨텐츠 -->
    <div id="mypage-contents">
        <!-- 메뉴 -->
        <%@ include file = "myPageMenus.jsp" %>
        <!-- 본문 -->
        <div id="mypage-box">
            <!-- 구매 내역 컨텐츠(최초실행) -->
            <div id="purchase-history-contents">
                <div class="contents_title"><div class="title_text">구매내역</div></div>
                <div id="purchase-history-lists">
                <!-- 구매 내역 목록 -->

                </div>
                
                <div class="paging">
                    <div><</div>
                    <div>1</div>
                    <div>2</div>
                    <div>3</div>
                    <div>4</div>
                    <div>5</div>
                    <div>></div>
                </div>
                <!-- 팝업(상세 내역) -->
                <div id="pops">
                    
                </div>
            </div>   
        </div>
    </div> 
    <div class="none"></div>
    <%@ include file = "footer.jsp" %>>
</body>
</html>