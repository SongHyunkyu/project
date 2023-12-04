<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.codemasters.project.dto.BookDTO" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>상 세 페 이 지 답글달기 jsp</title>
    <style>
        body {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            width: 100%;
            height: 100%;
        }

        .allfont {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            font-size: 17px;
        }

        @font-face {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2') format('woff2');
            font-weight: 700;
            font-style: normal;
        }

        body {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
        }

        .btn {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
        }

        


        @media screen and (max-width: 600px) {
            #top-header {
                text-align: left;
            }

            #title {
                margin-top: 10px;
                margin-left: 80px;
            }

            #title img {
                height: 120px;
            }

            #icons {
                width: 40%;
                margin-top: 10px;
            }

            .search {
                position: relative;
                text-align: center;
                width: 400px;
                margin: 0 auto;
            }

            .search input {
                width: 100%;
                height: 20px;
                border-radius: 30px;
                border: 1px solid #bbb;
                outline: 1px solid #bbb;
                margin: 10px 0;
                padding: 10px 12px;
                font-size: 30px;
                background-color: rgb(218, 241, 225);
            }

            .search :focus {
                border: 1px solid rgb(133, 133, 133);
                outline: 1px solid rgb(133, 133, 133);
            }

            #search-icon {
                position: absolute;
                right: -5%;
                top: 20%;
                width: 40px;
            }

            #search-icon img {
                width: 100%;
            }

            #header-menus {
                display: inline-flex;
                width: 100%;
                height: 50px;
                justify-content: space-around;
            }

            .menu {
                font-size: 25px;
            }

        }


        /* .sl, .bl, .rl {
            border: 1px solid blue;
        }
        #line, #sline, #inline  {
            border: 1px solid blue;
        } */

        #second,
        #fourth {
            /* border: 1px solid blue; */
            display: flex;
            justify-content: center;
        }


        /* 첫번째 줄 */
        #first {
            /* margin-top: 2%; */
            /* margin-bottom: 3%; */
            /* border: 1px solid blue;  */
            font-size: 25px;
            font-weight: 900;
            display: flex;
            align-items: center;
            position: relative;
            width: 965px;
            height: 50px;
            margin: auto;

        }

        #first span {
            position: absolute;
            margin-top: 1%;
            margin-left: 1%;
        }


        /* 두번째 줄 그림*/
        .bp {
            /*    background-image: url(img/001.jpg);
            border: 1px solid blue;
            background-position: center;
            background-repeat: no-repeat;
            background-size: 230px 295px;
            width: 240px;
            height: 310px;*/
            margin-right: 2%;
            position: relative;
            text-align: center;
        }

        .overlay {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -100%);
            /* width: 240px;
            height: 310px; */
            display: none;
        }

        .bp:hover .overlay {
            display: block;
            cursor: pointer;
        }

        .bp:hover img {
            opacity: 0.5;
        }

        .bp img {
            background-position: center;
            background-repeat: no-repeat;
            background-size: 230px 295px;
            width: 240px;
            height: 310px;
        }

        /* 모달 */

        .popup {
            display: none;
            width: 35%;
            margin-left: 180px;
            position: absolute;
            top: 300px;
            z-index: 9;
        }

        .close {
            margin-left: 80%;
        }

        .close img {
            width: 40px;
            height: 40px;
        }

        .book_img img {
            height: 500px;

        }




        /* 두번째 줄 두번째 div */
        .bl {
            margin-right: 20%;
        }

        .bl1 {
            font-weight: 900;
            font-size: 25px;
            margin-top: 10px;
        }

        .bl2 {
            font-size: 18px;
            margin-top: 25px;
        }

        .bl3 {
            margin-top: 25px;
            font-weight: 500;
        }

        .bl4 {
            margin-top: 25px;
            font-size: 25px;
            font-weight: 600;
        }

        .bl5 {
            margin-top: 25px;
            width: 300px;
            word-wrap: break-word;
        }


        /* 두번째 줄 세번째 div */
        #second {
            width: 965px;
            margin: 0 auto;

        }

        .s1 {
            display: flex;
            justify-content: center;
            /* width: 200px; */
            margin-top: 4%;
        }

        .s2 {
            display: flex;
            justify-content: center;
            margin-top: 4%;
        }

        .s3 {
            display: flex;
            justify-content: center;
            margin-top: 4%;
        }

        /* .sl {
            border: 1px solid blue;
        } */

        .splus #goodButton {
            /* position: relative; */
            margin-top: 55%;
            border-radius: 50%;
            /* cursor: pointer; */
            /* background-color: rgba(218, 241, 225); */
            background-color: white;
            /* box-shadow: 3px 3px 3px gray; */
            border: none;
            transition-duration: 0.3s;
        }

        .splus {
            display: flex;
        }

        .splus #goodButton:active {
            /* margin-left: 5px;
            margin-top: 5px; */
            transform: translate(2px, 2px);
            box-shadow: none;
        }

        #Recommend {
            font-size: 13px;
            font-weight: bold;
        }

        #rec {
            margin-top: 58%;
            margin-left: 10%;
        }

        .splus img {
            width: 30px;
            height: 30px;
        }

        .sl1 {
            margin-right: 2%;
            width: 30px;
            background-color: rgb(218, 241, 225);
            border-radius: 10px;
            border: none;
            background-image: url(resources/주형img/minus.png);
            background-repeat: no-repeat;
            background-size: 15px;
            background-position: center center;
        }

        .sl2 {
            width: 120px;
            height: 35px;
            margin-right: 2%;
            text-align: center;
            border-radius: 10px;
            border: 1px solid rgb(205, 205, 205);
            background-color: rgba(255, 255, 255, 0.907);
        }

        .sl3 {
            width: 30px;
            background-color: rgba(218, 241, 225);
            border-radius: 10px;
            border: none;
            background-image: url(resources/주형img/plus.png);
            background-repeat: no-repeat;
            background-size: 15px;
            background-position: center center;
        }

        .sl4 {
            /* width: 190px; */
            height: 35px;
            background-color: rgba(218, 241, 225);
            width: 100%;
            border-radius: 10px;
            border: none;
        }

        .sl5 {
            /* width: 190px; */
            height: 35px;
            background-color: rgba(218, 241, 225);
            width: 100%;
            border-radius: 10px;
            border: none;
        }

        .sl1:active,
        .sl3:active,
        .sl4:active,
        .sl5:active {
            background-color: rgba(174, 223, 189, 0.988);
        }

        .sl a {
            text-decoration: none;
        }


        /* 세번째 줄 */
        #third {
            /* border: 1px solid red; */
            /* margin-bottom: 2%; */
            margin: auto;
            display: flex;
            align-items: center;
            position: relative;
            width: 965px;
            height: 90px;
        }

        .inl {
            margin-top: 5%;
            position: absolute;
            display: flex;
        }

        .inl input {
            margin-right: 0;
        }

        .in1,
        .in2 {
            width: 180px;
            height: 35px;
        }

        .in1 {
            background-color: rgba(174, 223, 189, 0.988);
            border-radius: 10px;
            border: none;
        }

        .in2 {
            background-color: rgba(218, 241, 225);
            border-radius: 10px;
            border: none;
        }

        .in1:active {
            background-color: rgba(218, 241, 225);
        }

        .in2:active {
            background-color: rgba(174, 223, 189, 0.988);
        }


        /* 도서정보추가 */
        #third_1 {
            font-size: 25px;
            font-weight: 900;
            display: flex;
            align-items: center;
            position: relative;
            width: 965px;
            height: 50px;
            margin: auto;
            /* margin-top:  */
            margin-top: 1%;
        }


        /* 네번째 줄 */
        #fourth {
            width: 965px;
            margin: 0 auto;
            display: flex;
            justify-content: center;
        }

        .rl {
            margin-top: 5px;
            text-align: left;
        }


        /* 다섯번째 줄 */
        #fifth {
            /* border: 1px solid blue;  */
            /* margin-top: 2%;
            margin-bottom: 3%; */
            font-size: 25px;
            font-weight: 900;
            display: flex;
            align-items: center;
            position: relative;
            width: 965px;
            height: 50px;
            margin: auto;
            margin-top: 5%;

        }

        #fifth span {
            position: absolute;
            margin-top: 1%;
        }


        /* 여섯번째 줄 */
        #sixth {
            /* border: 1px solid blue;  */
            /* margin-top: 2%;
            margin-bottom: 3%; */
            font-size: 25px;
            font-weight: 900;
            display: flex;
            align-items: center;
            /* position: relative; */
            width: 965px;
            height: 50px;
            margin: auto;
            /* margin-top:  */
            margin-top: 1%;
        }

        #ratingInput {
            margin-left: 1%;
        }


        /* 일곱번째 줄 */
        #seventh {
            margin: 0 auto;
            display: flex;
            width: 965px;
            /* border: 1px solid blue;  */
            margin-top: 2%;
        }

        #seventh .sv1:focus {
            outline: none;
        }

        .sv {
            width: 790px;
            height: 65px;
            /* margin-left: 1%; */
            border: 1px solid rgb(205, 205, 205);
            border-radius: 10px;
        }

        .sv1 {
            margin-top: 1%;
            margin-left: 1%;
            margin-bottom: 1%;
            width: 720px;
            height: 50px;
            border: none;
        }

        .sv2 {
            width: 175px;
            background-color: rgba(218, 241, 225);
            border-radius: 10px;
            border: none;
            margin-left: 4px;
        }


        /* 여덟번째 줄 */
        #eighth {
            margin: 0 auto;
            width: 965px;
            /* border: 1px solid blue;  */
            margin-top: 2%;
            /* border: 1px solid blue; */
        }

        .cl1,
        .cl2,
        .cl3 {
            /* border: 1px solid red; */
            margin-top: 1%;
        }

        .cl1 {
            /* margin-left: 1%; */
            border: 1px solid rgb(202, 202, 202);
            padding: 10px;
            border-radius: 10px;
        }

        .reply {
            margin-top: 10px;
            margin-left: 30px;
        }

        .reply-button{
            border-radius: 5px;
            margin-left: 4px;
        }

        .cl11 {
            display: flex;
            justify-content: left;
        }

        /* .cl1_1 {
            border: 1px solid red;
        } */

        .cl1_2 {
            /* border: 1px solid palevioletred; */
            margin-left: 2%;
        }

        .cl1_3 {
            /* border: 1px solid green; */
            width: 910px;
        }

       #eighth .sv1{
            border: 1px solid rgb(202, 202, 202);
            padding: 10px;
            border-radius: 10px;
            outline: none;
        }

        #eighth .sv2{
            height: 70px;
            background-color: rgba(218, 241, 225);
            border-radius: 10px;
            border: none;
            margin: 0;
        }

        /* 답글 입력 창을 숨김 */
        .reply-form.hidden {
            display: none;
        }

        /* 아홉번째 줄 */
        #ninth {
            /* border: 1px solid blue;  */
            width: 965px;
            margin: auto;
            display: flex;
            justify-content: center;
            margin-top: 2%;
            
        }

        #nline:active,
        #nline:focus {
            background-color: hsla(138, 43%, 78%, 0.988);
        }

        #nline {
            margin-right: 1%;
            height: 40px;
            width: 40px;
            background-color: rgba(218, 241, 225);
            border-radius: 10px;
            border: none;
            font-family: 'Cafe24Supermagic-Bold-v1.0';
        }


        /* 위로가는 버튼 스타일 */
        #scrollToTopBtn {
            position: fixed;
            bottom: 60px;
            right: 20px;
            /* background-color: #007bff; */
            /* color: #fff; */
            /* border: none; */
            /* padding: 10px 20px; */
            cursor: pointer;
            background-color: rgba(218, 241, 225);
            border-radius: 10px;
            border: none;
            width: 30px;
            height: 30px;
        }

        /* 아래로가는 버튼 스타일 */
        #scrollToBottomBtn {
            position: fixed;
            bottom: 20px;
            right: 20px;
            /* background-color: #007bff;
            color: #fff;
            border: none; */
            /* padding: 10px 20px; */
            /* width: ; */
            cursor: pointer;
            background-color: rgba(218, 241, 225);
            border-radius: 10px;
            border: none;
            width: 30px;
            height: 30px;
        }

        #scrollToBottomBtn:active,
        #scrollToTopBtn:active {
            background-color: rgba(174, 223, 189, 0.988);
        }

        .delete-button {
            background-color: rgba(218, 241, 225);
            color: black;
            border: none;
            width: 60px;
            height: 20px;
            border-radius: 5px;
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            border-radius: 5px;

        }

        .reply-button {
            background-color: rgba(174, 223, 189, 0.988);
            color: black;
            border: none;
            width: 80px;
            height: 20px;
            font-family: 'Cafe24Supermagic-Bold-v1.0';

        }

        .star {
            background-color: white;
            width: 100px;
            height: 50px;
            margin: 10px;
            border: none;
        }
        
        .book_star {
            display: flex;
            width: 100px;
            height: 20px;
        }

		
    </style>

</head>

<body>
<%@ include file="header.jsp" %>

    <div id="first">
        <span></span>
    </div>

    <div id="second">
        <!-- bp = book photo -->
        <div class="bp" id="bookImage">
            <img src="${list[0].book_img}"  alt="책 이미지">
            <div class="overlay" onclick="openPopup('pop')">
                <p class="tip">크게보기</p>
            </div>
        </div>
        <div class="bl">
            <div class="bl1" id="line">${list[0].book_name }</div>
            <div class="bl2" id="line">${list[0].author } / ${list[0].publisher } / ${list[0].publication_date }</div>
            <div class="bl3" id="line"> 
            <%-- <div class="book_star">
            <%
    
    double star = (Double) request.getAttribute("star");
    
            
    // 별 이미지 출력
    for (int i = 1; i <= 5; i++) {
        // 별의 반이나 빈 별을 표현하는 이미지 여부를 결정
        String imageName = (star >= i) ? "star1.png" : ((star + 0.5 >= i) ? "star0.5.png" : "star0.png");
%>
        <img src="resources/img/<%= imageName %>" alt="별 이미지">
<%
    }
%>

</div>  리뷰(${count }) --%>
            </div>
            <div class="bl4" id="line">가격 ${list[0].book_price }</div>
            <div class="bl5" id="line">
                <p id="bookDetail">${list[0].book_detail}</p>
            </div>
        </div>
        <div class="sl">
            <div class="splus">
                <button type="button" id="goodButton"><img src="resources/주형img/heart.png"></button>
                <div id="rec">
                    <span id="Recommend">추천하기</span>
                </div>
            </div>
             <form action="/project/order2" method="post">
            <div class="s1">
                <input class="sl1" id="sline" type="button" >
                <input class="sl2 allfont" id="sline" type="text" name="quantity" placeholder="수량 선택">
                <input class="sl3" id="sline" type="button" >
            </div>  
            <input type="hidden" name="book_number" value="${list[0].book_number}">
                <div class="s3">
                    <input class="sl5 allfont" id="sline" type="submit" name="a" value="구매하기">
                </div>
            </form>
            <form action="baguni.jsp" method="post">
                <div class="s2">
                    <input class="sl4 allfont" id="sline" type="submit" name="a" value="장바구니">
                </div>
            </form>
        </div>
    </div>

    <!-- 모달 -->
    <div id="popup_wrap">
        <div class="popup_bg"></div>
        <div class="popup" id="pop">
            <div class="close" onclick="closePopup('pop')">
                <img src="resources/주형img/X.png" alt="">
            </div>
            <div class="book_img">
                <img src="${list[0].book_img }" alt="">
            </div>
        </div>
    </div>

    <div id="third">
        <div class="inl">
            <input class="in1 allfont" id="info-button" type="submit" value="도 서 정 보">
            <input class="in2 allfont" id="review-button" type="submit" value="리 뷰 / 한 줄 평">
        </div>
    </div>

    <div id="third_1">
        <span id="rl-section">도 서 정 보</span>
    </div>

    <div id="fourth">
        <div class="rl">
            ${list[0].book_detail }
        </div>
    </div>

    <div id="fifth">
        <span id="reviews-heading">리 뷰 / 한 줄 평</span>
    </div>

    <!-- 별점 선택 영역 -->
    <div id="sixth">
        <label for="starRating">별점 : </label>
        <select id="starRating" class="star">
            <option value="5" class="star5">★★★★★</option>
            <option value="4" class="star4">★★★★☆</option>
            <option value="3" class="star3">★★★☆☆</option>
            <option value="2" class="star2">★★☆☆☆</option>
            <option value="1" class="star1">★☆☆☆☆</option>
        </select>
    </div>

    <!-- 댓글 입력 영역 -->
    <div id="seventh">
        <div class="sv">
            <!-- 댓글을 입력하는 입력 필드 -->
            <input class="sv1 allfont" id="commentInput" type="text" placeholder="내용을 입력해 주세요">
        </div>
        <!-- 댓글 등록 버튼 -->
        <!-- <input class="sv2" type="button" value="등 록" id="commentButton"> -->
        <input type="submit" class="sv2 allfont" id="commentButton" value="댓글 등록">
    </div>

    <!-- 댓글 출력 영역 -->
    <div id="eighth">
        <!-- 댓글이 여기에 동적으로 추가됩니다. -->
    </div>

    <div id="ninth">
        <input class="nl1" id="nline" type="submit" value="<">
        <input class="nl2" id="nline" type="submit" value="1">
        <input class="nl3" id="nline" type="submit" value="2">
        <input class="nl4" id="nline" type="submit" value="3">
        <input class="nl5" id="nline" type="submit" value="4">
        <input class="nl6" id="nline" type="submit" value=">">
    </div>


    <!-- 위로가는 버튼 -->
    <button id="scrollToTopBtn" onclick="scrollToTop()">↑</button>

    <!-- 아래로가는 버튼 -->
    <button id="scrollToBottomBtn" onclick="scrollDown()">↓</button>


<%@ include file="footer.jsp" %>
</body>


    <script>
        // 페이지가 로드될 때 맨 위로 스크롤
        window.onload = function () {
            window.scrollTo(0, 0);
        }
        
        var bookDetailElement = document.getElementById("bookDetail");
        var maxTextLength = 100; // 최대 길이 설정

        if (bookDetailElement.textContent.length > maxTextLength) {
            var truncatedText = bookDetailElement.textContent.substring(0, maxTextLength) + "...";
            bookDetailElement.textContent = truncatedText;
        }
         
        
        // 위로 스크롤 함수
        function scrollToTop() {
            window.scrollTo(0, 0);
        }

        // 아래로 스크롤 함수
        function scrollDown() {
            window.scrollTo(0, document.body.scrollHeight);
        }

        // sl라인에 있는 버튼눌렀을때 실행할 수 있게 해주는 js
        // DOM 요소를 가져옵니다.
        const decrementButton = document.querySelector(".sl1"); // class "sl1"을 가진 요소를 선택합니다.
        const incrementButton = document.querySelector(".sl3"); // class "sl3"을 가진 요소를 선택합니다.
        const quantityInput = document.querySelector(".sl2"); // class "sl2"를 가진 요소를 선택합니다.
        const addToCartButton = document.querySelector(".sl4"); // class "sl4"을 가진 요소를 선택합니다.
        const buyNowButton = document.querySelector(".sl5"); // class "sl5"을 가진 요소를 선택합니다.

        // 수량 초기값을 설정합니다.
        let quantity = 0;
       

        // 수량 감소 버튼에 대한 이벤트 리스너를 추가합니다.
        decrementButton.addEventListener("click", () => {
            if (quantity > 1) {
                quantity--;
                quantityInput.value = quantity;
            }
        });

        // 수량 증가 버튼에 대한 이벤트 리스너를 추가합니다.
        incrementButton.addEventListener("click", () => {
            quantity++;
            quantityInput.value = quantity;
        });

        // 수량 필드에 수량을 직접 입력하는 경우에 대한 이벤트 리스너를 추가합니다.
        quantityInput.addEventListener("input", () => {
            const inputQuantity = parseInt(quantityInput.value);
            if (!isNaN(inputQuantity) && inputQuantity >= 1) {
                quantity = inputQuantity;
            } else {
                // 잘못된 입력이면 기본값으로 복원합니다.
                quantityInput.value = quantity;
            }
        });

        // 장바구니 버튼 또는 구매하기 버튼을 누를 때 수량 값을 사용할 수 있습니다.
        addToCartButton.addEventListener("click", () => {
            // 수량(quantity)을 가져와서 사용하거나 장바구니에 추가하는 로직을 추가하세요.
            // console.log("장바구니에 추가: " + quantity);

            // 장바구니에 추가하는 로직을 추가하세요
            alert("장바구니에 " + quantity + "개의 상품을 추가했습니다.");
        });

        buyNowButton.addEventListener("click", () => {
            // 수량(quantity)을 가져와서 사용하거나 구매하는 로직을 추가하세요.
            // console.log("구매하기: " + quantity);

            // 구매하는 로직을 추가하세요.
            if(quantity == null || quantity ==0) {    
            	alert("수량을 추가해주세요")
            	event.preventDefault();
            } 
            else {       	
            	alert(quantity + "개의 상품을 구매합니다.")
            }
        });


        // inl라인으로 바꾸기
        // DOM 요소를 가져옵니다.
        const infoButton = document.getElementById("info-button");
        const reviewButton = document.getElementById("review-button");
        const reviewsHeading = document.getElementById("reviews-heading");
        const rlSection = document.getElementById("rl-section"); // .rl 요소로 변경 (아이디 추가)

        // "도서 정보" 버튼을 클릭했을 때의 동작을 정의하는 함수
        function showInfo() {
            infoButton.classList.add("active-button");
            reviewButton.classList.remove("active-button");
            // 도서 정보를 표시하는 로직 추가

            // 도서 정보를 표시한 후 해당 부분으로 스크롤
            rlSection.scrollIntoView({ behavior: "smooth" });
        }

        // "리뷰 / 한 줄 평" 버튼을 클릭했을 때의 동작을 정의하는 함수 (이전과 동일한 함수 사용)
        function showReviews() {
            reviewButton.classList.add("active-button");
            infoButton.classList.remove("active-button");
            // 리뷰와 한 줄 평을 표시하는 로직 추가

            // 리뷰/한 줄 평을 표시한 후 해당 부분으로 스크롤
            reviewsHeading.scrollIntoView({ behavior: "smooth" });
        }

        showInfo();

        infoButton.addEventListener("click", showInfo);
        reviewButton.addEventListener("click", showReviews);


        // HTML 문서에서 #ninth ID를 가진 요소 안에 있는 모든 <input> 요소를 선택합니다.
        const nlineButtons = document.querySelectorAll('#ninth input');

        // 선택한 각 <input> 요소에 대한 반복문을 실행합니다.
        nlineButtons.forEach(button => {
            // 마우스가 요소에 진입할 때 이벤트 리스너를 설정합니다.
            button.addEventListener('mouseenter', () => {
                // 배경색을 변경하여 마우스 진입 효과를 추가합니다.
                button.style.backgroundColor = 'rgba(174, 223, 189, 0.988)';
            });

            // 마우스가 요소를 이탈할 때 이벤트 리스너를 설정합니다.
            button.addEventListener('mouseleave', () => {
                // 배경색을 원래의 색으로 변경하여 마우스 이탈 효과를 추가합니다.
                button.style.backgroundColor = 'rgba(218, 241, 225)';
            });

            // 요소가 클릭될 때 이벤트 리스너를 설정합니다.
            button.addEventListener('click', () => {
                // 모든 버튼의 배경색을 원래의 색으로 초기화합니다.
                nlineButtons.forEach(btn => {
                    btn.style.backgroundColor = 'rgba(218, 241, 225)';
                });

                // 클릭한 버튼의 배경색을 변경하여 클릭 효과를 추가합니다.
                button.style.backgroundColor = 'rgba(174, 223, 189, 0.988)';
            });
        });

        // // 1번 버튼 요소를 선택합니다.
        // const button1 = document.querySelector('.nl2');

        // // 1번 버튼이 클릭되었을 때 다른 페이지로 이동합니다.
        // button1.addEventListener('click', () => {
        //     // 다른 페이지의 URL을 여기에 설정합니다.
        //     const nextPageURL = 'https://www.naver.com/';

        //     // window.location 객체를 사용하여 다른 페이지로 이동합니다.
        //     window.location.href = nextPageURL;
        // });

        // good 버튼 요소를 선택합니다.
        const goodButton = document.getElementById('goodButton');

        // 클릭 상태를 추적하기 위한 변수를 만듭니다.
        let isGoodClicked = false;

        // good 버튼 클릭 시 이벤트 리스너를 추가합니다.
        goodButton.addEventListener('click', () => {
            // 클릭 상태를 토글합니다.
            isGoodClicked = !isGoodClicked;

            // 클릭 상태에 따라 이미지를 변경합니다.
            if (isGoodClicked) {
                goodButton.innerHTML = '<img src="resources/주형img/heart_full.png">';
                // 클릭 상태에서 배경색을 변경합니다.
                goodButton.style.backgroundColor = 'white'; // 원하는 배경색으로 변경하세요.
            } else {
                goodButton.innerHTML = '<img src="resources/주형img/heart.png">';
                // // 클릭 상태에서 배경색을 원래 상태로 복원합니다.
                // goodButton.style.backgroundColor = 'rgba(218, 241, 225)'; // 초기 배경색으로 돌아갑니다.
            }
        });


        // 댓글 목록 배열 초기화
        let comments = [];

        // 댓글 입력창과 등록 버튼을 가져옵니다.
        const commentInput = document.getElementById('commentInput');
        const commentButton = document.getElementById('commentButton');

        // 댓글 목록을 표시하는 함수
        function displayComments() {
            const commentContainer = document.getElementById('eighth');
            if (!commentContainer) {
                console.error('댓글 컨테이너를 찾을 수 없습니다.');
                return;
            }
            commentContainer.innerHTML = ''; // 기존 댓글을 모두 삭제

            // 댓글 배열을 순회하면서 댓글을 표시
            for (let i = comments.length - 1; i >= 0; i--) {
                const comment = comments[i];

                const commentDiv = document.createElement('div');
                commentDiv.classList.add('cl1');

                const commentInfoDiv = document.createElement('div');
                commentInfoDiv.classList.add('cl11');

                // 평점을 별로 변환하여 표시
                const ratingDiv = document.createElement('div');
                ratingDiv.classList.add('cl1_1');
                ratingDiv.textContent = '별 점 : ' + getStarRating(comment.rating);

                const authorDiv = document.createElement('div');
                authorDiv.classList.add('cl1_2');
                authorDiv.textContent = comment.author;

                commentInfoDiv.appendChild(ratingDiv);
                commentInfoDiv.appendChild(authorDiv);

                // contentDiv를 생성하여 댓글 내용을 표시합니다.
                const contentDiv = document.createElement('div'); // contentDiv 추가
                contentDiv.classList.add('cl1_3');
                contentDiv.textContent = comment.content;

                commentDiv.appendChild(commentInfoDiv);
                commentDiv.appendChild(contentDiv); // contentDiv를 commentDiv에 추

                // 삭제 버튼 생성 및 이벤트 핸들러 추가
                const deleteButton = document.createElement('button');
                deleteButton.textContent = '삭제';
                deleteButton.classList.add('delete-button');
                deleteButton.addEventListener('click', () => {
                    // 삭제 버튼을 클릭했을 때 해당 댓글을 삭제하는 로직을 여기에 추가합니다.
                    comments.splice(i, 1); // 배열에서 해당 댓글 삭제

                    // 로컬 스토리지에서도 해당 댓글 삭제
                    updateLocalStorage();

                    displayComments(); // 댓글 목록 다시 표시
                });

                // 댓글 Div에 삭제 버튼 추가
                commentDiv.appendChild(deleteButton);

                // 답글 달기 버튼 추가
                const replyButton = document.createElement('button');
                replyButton.textContent = '답글 달기';
                replyButton.classList.add('reply-button');
                replyButton.addEventListener('click', () => {
                    // 답글 입력 창을 보여주고 숨깁니다.
                    toggleReplyForm(i);
                });
                commentDiv.appendChild(replyButton);

                // 답글 입력 창 추가
                const replyForm = document.createElement('div');
                replyForm.classList.add('reply-form', 'hidden');
                replyForm.innerHTML = `
            <input class="sv1 allfont" type="text" id="replyInput${i}" placeholder="답글을 입력하세요">
            <button type="button" class="sv2 allfont" id="replyButton${i}">답글 등록</button>
        `;
                commentDiv.appendChild(replyForm);

                // 답글 등록 버튼 이벤트 리스너 추가
                //const replyButtonEl = replyForm.getElementById(`replyButton${i}`);
                const replyButtonEl = replyForm.querySelector(`#replyButton${i}`);
                console.log(replyForm, i)
                if (replyButtonEl) {
                    replyButtonEl.addEventListener('click', () => {
                        const replyInput = document.getElementById(`replyInput${i}`);
                        const replyContent = replyInput.value;
                        if (replyContent.trim() === '') {
                            alert('답글 내용을 입력하세요.');
                            return;
                        }

                        // 답글 배열에 새 답글 추가
                        const reply = {
                            author: new Date().toLocaleString(),
                            content: replyContent,
                        };

                        if (!comments[i].replies) {
                            comments[i].replies = [];
                        }

                        comments[i].replies.push(reply);

                        // 로컬 스토리지에서도 답글 추가
                        updateLocalStorage();

                        // 답글 입력창 비우기
                        replyInput.value = '';

                        // 답글 목록 업데이트
                        displayComments();
                    });
                }

                // 답글을 표시하는 부분 추가
                if (comments[i].replies) {
                    const repliesDiv = document.createElement('div');
                    repliesDiv.classList.add('replies');

                    for (let j = 0; j < comments[i].replies.length; j++) {
                        const reply = comments[i].replies[j];
                        const replyDiv = document.createElement('div');
                        replyDiv.classList.add('reply');

                        const replyAuthorDiv = document.createElement('div');
                        replyAuthorDiv.textContent = reply.author;
                        replyDiv.appendChild(replyAuthorDiv);

                        const replyContentDiv = document.createElement('div');
                        replyContentDiv.textContent = reply.content;
                        replyDiv.appendChild(replyContentDiv);

                        // 삭제 버튼 생성 및 이벤트 핸들러 추가 (답글 삭제)
                        const deleteReplyButton = document.createElement('button');
                        deleteReplyButton.textContent = '삭제';
                        deleteReplyButton.classList.add('delete-button');
                        deleteReplyButton.addEventListener('click', () => {
                            comments[i].replies.splice(j, 1); // 해당 답글 삭제

                            // 로컬 스토리지에서도 해당 답글 삭제
                            updateLocalStorage();

                            displayComments(); // 댓글 목록 다시 표시
                        });
                        replyDiv.appendChild(deleteReplyButton);

                        repliesDiv.appendChild(replyDiv);
                    }

                    commentDiv.appendChild(repliesDiv);
                }

                // 맨 위에 댓글 추가
                if (commentContainer.firstChild) {
                    commentContainer.insertBefore(commentDiv, commentContainer.firstChild);
                } else {
                    commentContainer.appendChild(commentDiv);
                }
            }
        }

        // 답글 입력 창 토글 함수
        function toggleReplyForm(index) {
            const replyForm = document.querySelector(`#replyInput${index}`).parentNode;
            replyForm.classList.toggle('hidden');
        }



        // 평점을 별로 변환하는 함수
        function getStarRating(rating) {
            let stars = '';
            switch (rating) {
                case 5:
                    stars = '★★★★★';
                    break;
                case 4:
                    stars = '★★★★☆';
                    break;
                case 3:
                    stars = '★★★☆☆';
                    break;
                case 2:
                    stars = '★★☆☆☆';
                    break;
                case 1:
                    stars = '★☆☆☆☆';
                    break;
                default:
                    stars = '평가 없음';
            }
            return stars;
        }

        // 로컬 스토리지 업데이트 함수
        function updateLocalStorage() {
            localStorage.setItem('comments', JSON.stringify(comments));
        }

        // // 댓글 등록 버튼 클릭 이벤트 핸들러
        // commentButton.addEventListener('click', () => {
        //     const content = commentInput.value;
        //     if (content.trim() === '') {
        //         alert('댓글 내용을 입력하세요.');
        //         return;
        //     }

        // 댓글 등록 버튼 클릭 이벤트 핸들러
        document.addEventListener('DOMContentLoaded', () => {
            const commentButton = document.getElementById('commentButton');
            const commentInput = document.getElementById('commentInput'); // 댓글 입력창 추가 

            if (commentButton) {
                commentButton.addEventListener('click', () => {
                    const content = commentInput.value;
                    if (content.trim() === '') {
                        alert('댓글 내용을 입력하세요.');
                        return;
                    }

                    // 별점 선택
                    const starRatingElement = document.getElementById('starRating');
                    const starRatingText = starRatingElement.options[starRatingElement.selectedIndex].text;
                    const starRating = parseInt(starRatingElement.value);

                    // 임시로 현재 날짜와 시간을 댓글 작성자로 사용
                    const author = new Date().toLocaleString();

                    // 댓글 배열에 새 댓글 추가
                    const comment = {
                        rating: starRating,
                        author,
                        content,
                    };

                    comments.unshift(comment); // 최신 댓글을 맨 위에 추가

                    // 로컬 스토리지에서도 댓글 추가
                    updateLocalStorage();

                    // 댓글 입력창 비우기
                    commentInput.value = '';

                    // 댓글 목록 업데이트
                    displayComments();
                });
            }
        });

        // 초기화 함수에서도 로컬 스토리지 업데이트 추가
        function initializeComments() {
            const storedComments = localStorage.getItem('comments');
            if (storedComments) {
                comments = JSON.parse(storedComments);
            }
            // 댓글 목록 업데이트
            displayComments();
        }

        // 초기화 함수 호출
        initializeComments();

       

        // 팝업창


        function openPopup(popupId) {
            document.getElementById(popupId).style.display = 'block';
        }

        function closePopup(popupId) {
            document.getElementById(popupId).style.display = 'none';
        }
    

    </script>


</html>