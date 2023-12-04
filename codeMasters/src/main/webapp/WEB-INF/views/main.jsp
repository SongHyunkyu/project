<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <style>
        @font-face {
            font-family: 'KCC-Ganpan';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/KCC-Ganpan.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'HakgyoansimWoojuR';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;

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


        .mainImg {
            width: 364px;
            height: 442px;
            margin-right: 20px;
        }

        .imgfix {
            display: flex;
            align-items: center;
        }

        .best {
            width: 100%;
            height: 500px;
            /* border: solid rgb(96, 38, 255); */
        }

        .none {
            width: 100%;
            height: 50px;
            /* border: solid red; */
            font-size: 25px;
            vertical-align: middle;
        }


        .event {
            width: 570px;
            height: 220px;
            /* border: solid red; */
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 20px;
        }

        .eventbig {
            width: 100%;
            height: 300px;
            /* border: solid red; */
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .eventimgbox {
            width: 230px;
            height: 230px;
            /* border: solid red; */
            align-items: center;
            margin: 20px;
            border-radius: 50%;

        }

        .eventimgbig {
            width: 100%;
            height: 300px;
            display: flex;
            text-align: center;
            justify-content: center;
            align-items: center;
            /* border: solid red; */
        }

        .fullimg {
            width: 100%;
            height: 600px;
            /* border: solid red; */
        }

        .eventbigbox {
            width: 100%;
            height: 400px;
            /* border: solid red; */
            display: flex;
            text-align: center;
            justify-content: center;
            align-items: center;

        }

        .eventbigbox2 {
            width: 100%;
            height: 200px;
            /* border: solid red; */
            display: flex;
            text-align: center;
            justify-content: center;
            align-items: center;

        }

        .event_bar {
            width: 100%;
            height: 160px;
        }

        .foot {
            background-color: rgb(210, 210, 210);
            height: 200px;
            width: 100%;
        }

        body {
            margin: 0;
            font-family: 'Cafe24Supermagic-Bold-v1.0';
        }

        /*메인 슬라이드 공간*/


        .slider-container1 {
            overflow: hidden;
            position: relative;
            width: 100%
                /* 슬라이더의 너비를 조정하세요 */
        }

        .slider1 {
            display: flex;
            transition: transform 0.3s ease;
        }

        .slide1 {
            flex: auto;
            /* 각 슬라이드의 너비를 조정하세요 */
            /* width: 300px; */
            /* 각 슬라이드의 높이를 조정하세요 */
            margin: 10px;
            padding: 30px;
            /* border: solid red; */
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            font-size: 15px;

        }


        .prev-button1,
        .next-button1 {


            top: 50%;
            background-color: rgb(255, 255, 255);
            color: black;
            border: none;
            /* padding: 5px 10px; */
            cursor: pointer;
            align-items: center;
            font-size: 20px;
            border-radius: 50%;
            height: 60px;
            width: 60px;
            top: 520px;
            left: 1140px;


        }

        .prev-button1 {
            left: 40px;
        }

        .next-button1 {
            right: 0;
        }


        /* 아래 슬라이드 */
        .slider-container2 {
            overflow: hidden;
            position: relative;
            width: 100%
                /* 슬라이더의 너비를 조정하세요 */
        }

        .slider2 {
            display: flex;
            transition: transform 0.3s ease;
        }

        .slide2 {
            flex: auto;
            /* 각 슬라이드의 너비를 조정하세요 */
            width: 300px;
            /* 각 슬라이드의 높이를 조정하세요 */
            margin: 10px;
            padding: 30px;
            /* border: solid red; */

        }

        .asbox {
            text-align: center;

        }

        .asbox2 {
            text-align: center;
            top: 300px;
        }

        .prev-button2,
        .next-button2 {
            top: 50%;
            background-color: rgb(255, 255, 255);
            color: black;
            border: none;
            /* padding: 5px 10px; */
            cursor: pointer;
            align-items: center;
            font-size: 20px;
            border-radius: 50%;
            height: 60px;
            width: 60px;
            top: 520px;
            left: 1140px;


        }

        .prev-button2 {
            left: 40px;
        }

        .next-button2 {
            right: 0;
        }

        .textpont {
            display: flex;
            vertical-align: middle;
        }

        .fontwidth {
            position: relative;
            left: 50px;
            font-size: 30px;
            font-weight: bolder;

        }

        .bignone {
            width: 100%;
            height: 500px;
            /* border: solid red; */
        }

        .snone {
            width: 365px;
            height: 400px;
            /* border: solid red; */
            padding: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .bookfont {
            font-size: 25px;
            text-align: left;
            width: 100%;
            display: flex;
        }

        .fontcenter {

            height: 442px;
            width: 750px;
            display: block;

        }

        .image-container2 {
            position: relative;
            display: inline-block;
            margin: 10px;
        }

        .image-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            /* Adjust the overlay color and opacity */
            display: flex;
            justify-content: center;
            align-items: center;
            opacity: 0;
            transition: opacity 0.3s;
        }

        .image-container:hover .image-overlay {
            opacity: 1;
        }

        .tip {
            color: white;
            font-size: 1.5em;
            cursor: pointer;
        }

        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: white;
            padding: 20px;
            border: 1px solid #ccc;
            z-index: 9999;
            width: 500px;
            height: 700px;
        }

        .close-popup {
            cursor: pointer;
            position: absolute;
            top: 10px;
            right: 10px;
        }

        .image-container {
            position: relative;
            display: inline-block;
        }

        .image-container img {
            width: 230px;
            height: 230px;
            border-radius: 50%;
            margin: 30px;

        }

        .image-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 230px;
            height: 230px;
            background-color: rgba(0, 0, 0, 0.7);
            /* 어두운 배경색 조절 */
            display: flex;
            align-items: center;
            justify-content: center;
            opacity: 0;
            transition: opacity 0.3s ease-in-out;
            border-radius: 50%;
            margin: 30px;
        }

        .image-container:hover .image-overlay {
            opacity: 1;
        }

        .image-overlay p {
            color: white;
            /* 폰트 색상 설정 */
            font-size: 25px;
            /* 폰트 크기 설정 */
            text-align: center;
            cursor: pointer;
        }

        .image-overlay.active {
            display: flex;
        }

        .boximg {

            text-align: center;
            width: 100%;
            height: 300px;
            /* border: solid red; */
        }

        body {
            margin: 0;
            padding: 0;
        }

        li {
            list-style: none;
        }

        a {
            /* font-family: "돋움"; */
            font-size: 12px;
            color: #000;
            text-decoration: none;
        }

        #visual {
            position: relative;
            width: 100%;
            height: 607px;
            margin: 0 auto;
            overflow: hidden;
            box-shadow: 1px 5px 10px 2px #b7b7b7;

        }

        #visual>div {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            transition: 0.3s ease;
            opacity: 0;
        }

        #visual>div.on {
            opacity: 1;
        }

        .hidden {
            overflow: hidden;
        }

        .scroll {
            overflow: scroll;
            width: 50%;
        }

        #control {
            position: absolute;
            width: 100%;
            height: 50px;
            bottom: 0px;
            top: 90px;
            /* left: 30px; */
            text-align: center;

        }

        #control a {
            display: inline-block;
            width: 12px;
            height: 12px;
            background: #ffffff;
            line-height: 26px;
            font-size: 0.8em;
            border-radius: 14px;
            margin-left: 5%;
            margin-right: 5%;
            /* margin-right: 50px; */
            justify-content: center;



        }

        #control a.on {
            background: #00ffd5;
            width: 12px;
            height: 12px;
            justify-content: center;
            text-align: center;


        }

        .iconlong {
            display: inline-block;
            overflow: hidden;
            z-index: 999;
            top: 450px;
        }

        .mainlinebar {
            display: flex;
            position: absolute;
            left: 70%;
            bottom: 508px;
            border-bottom: 1px solid hsl(0, 0%, 100%);
            box-shadow: black;
            width: 70%;
            margin: 0;
            padding: 0;
            -webkit-transform: translateX(-80%);
            text-align: center;
        }

        .tip {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
        }

        .eventbar {
            width: 1100px;
        }

        div a img {
            height: 100%;
            width: 100%;
        }

        /* .on {
            height: 100%;
            width: 100%;
        } */

        @media (max-width: 1920px) {

            /* 컴퓨터*/

        }

        @media (min-width: 960px) and (max-width: 1024px) {
            /* 테블릿 */
        }

        @media (min-width: 500px) and (max-width: 959px) {
            /* 모바일 */
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

        .slideshow-container {
            max-width: 800px;
            position: relative;
            margin: auto;
        }

        .mySlides {
            display: none;
            
        }

        .prev3,
        .next3 {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            margin-top: -30px;
            padding: 16px;
            color: rgb(0, 0, 0);
            font-weight: bold;
            font-size: 40px;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }

        .prev3 {
            left: 0;
            border-radius: 3px 0 0 3px;
        }

        .next3 {
            right: 0;
            border-radius: 3px 0 0 3px;
        }
        
    </style>

</head>
<body>

<%@ include file = "header.jsp" %>
        
    <table>

        <!-- 각 슬라이드 -->
        <div id="visual">
            <div class="on"><a><img src="resources/mainimg/MAIN1.jpg" alt="1"></a></div>
            <div><a><img src="resources/mainimg/MAIN2.jpg" alt="3"></a></div>
            <div><a><img src="resources/mainimg/MAIN3.jpg" alt="4"></a></div>
            <div><a><img src="resources/mainimg/MAIN4.jpg" alt="3"></a></div>
            <div><a><img src="resources/mainimg/MAIN5.jpg" alt="4"></a></div>

            <section id="control" class=" iconlong">
                <a class="on"></a>
                <a></a>
                <a></a>
                <a></a>
                <a></a>
            </section>
            <span class="mainlinebar"></span>

        </div>
        </div>
        <div class="none"></div>
        <div class="fontwidth">오늘의 추천 도서</div>
        <div class="imgfix bignone">
            <div class="snone">
                <img class="mainImg" src="resources/mainimg/010.jpg">

            </div>
            <div class="fontcenter ">

                <p class="bookfont">여기는 책 이름 </p> <br>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quam,<br>
                    dignissimos exercitationem eius debitis nihil eveniet unde,<br>
                    deserunt aspernatur necessitatibus reprehenderit ea suscipit sunt <br>
                    cupiditate temporibus laborum vitae placeat voluptas nam.</p>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quam,<br>
                    dignissimos exercitationem eius debitis nihil eveniet unde,<br>
                    deserunt aspernatur necessitatibus reprehenderit ea suscipit sunt <br>
                    cupiditate temporibus laborum vitae placeat voluptas nam.</p>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quam,<br>
                    dignissimos exercitationem eius debitis nihil eveniet unde,<br>
                    deserunt aspernatur necessitatibus reprehenderit ea suscipit sunt <br>
                    cupiditate temporibus laborum vitae placeat voluptas nam.</p>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quam,<br>
                    dignissimos exercitationem eius debitis nihil eveniet unde,<br>
                    deserunt aspernatur necessitatibus reprehenderit ea suscipit sunt </p>
            </div>

        </div>
        <div class="none"></div>
        <div class="fontwidth">
            <span class="textpont">
                베 스 트 셀 러
            </span>
        </div>
        <div class="slider-container1">

            <div class="best slider1">
                <a href="http://127.0.0.1:5502/%EC%86%90%EC%A3%BC%ED%98%95/%EC%86%90%EC%A3%BC%ED%98%95/detail_page.html">

                    <div class="slide1"><img src="resources/mainimg/001.jpg" style="width: 230px; height: 295px;">
                        <div>
                            아동심리 단번에 알아보기<br>
                            <p>
                                이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                            </p>
                        </div>
                    </div>
                </a>


                <div class="slide1"><img src="resources/mainimg/002.jpg" style="width: 230px; height: 295px;">
                    <div>
                        2039학년도 학생심리학<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                </a>


                <div class="slide1"><img src="resources/mainimg/003.jpg" style="width: 230px; height: 295px;">
                    <div>
                        월간스무디<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                </a>


                <div class="slide1"><img src="resources/mainimg/004.jpg" style="width: 230px; height: 295px;">
                    <div>
                        오늘의 화장품은?<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                </a>


                <div class="slide1"><img src="resources/mainimg/005.jpg" style="width: 230px; height: 295px;">
                    <div>
                        어린이 영어 첫단계<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                </a>


                <div class="slide1"><img src="resources/mainimg/006.jpg" style="width: 230px; height: 295px;">
                    <div>
                        오늘이 다시 시작 되는 그날<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                </a>


                <div class="slide1"><img src="resources/mainimg/007.jpg" style="width: 230px; height: 295px;">
                    <div>
                        제철식재료로 만드는 건강한 밥상<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                </a>


                <div class="slide1"><img src="resources/mainimg/008.jpg" style="width: 230px; height: 295px;">
                    <div>
                        이제는 혼자할수있다 혼자하는java<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                </a>


                <div class="slide1"><img src="resources/mainimg/009.jpg" style="width: 230px; height: 295px;">
                    <div>
                        CAT MBTI<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                </a>


                <div class="slide1"><img src="resources/mainimg/010.jpg" style="width: 230px; height: 295px;">
                    <div>
                        THE END OF LIFE<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                </a>




            </div>
            <div class="asbox">
                <button class="prev-button1"><img src="resources/mainimg/prev-button.png"
                        style="width: 30px;height: 30px;"></button>

                <button class="next-button1"> <img src="resources/mainimg/next-button.png" style="width: 30px;height: 30px;">
                </button>
            </div>
        </div>

        <div class="fontwidth">주간 인기도서</div>
        <div class="eventbig">

            <div class="event"><img src="resources/mainimg/HOTBOOK1.jpg" style="width: 600px; height: 230px;"></div>
            </a>

            <div class="event"><img src="resources/mainimg/HOTBOOK2.jpg" style="width: 600px; height: 230px;"></div>
            </a>


        </div>
        <div class="none"></div>
        <div class="fontwidth">화제의 신상</div>

        <div class="slider-container2">

            <div class="best slider2">

                <div class="slide2"><img src="resources/mainimg/010.jpg" style="width: 230px; height: 295px;">
                    <div>
                        여기는 제목입니다<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                <div class="slide2"><img src="resources/mainimg/009.jpg" style="width: 230px; height: 295px;">
                    <div>
                        여기는 제목입니다<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                <div class="slide2"><img src="resources/mainimg/008.jpg" style="width: 230px; height: 295px;">
                    <div>
                        여기는 제목입니다<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                <div class="slide2"><img src="resources/mainimg/007.jpg" style="width: 230px; height: 295px;">
                    <div>
                        여기는 제목입니다<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                <div class="slide2"><img src="resources/mainimg/006.jpg" style="width: 230px; height: 295px;">
                    <div>
                        여기는 제목입니다<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                <div class="slide2"><img src="resources/mainimg/005.jpg" style="width: 230px; height: 295px;">
                    <div>
                        여기는 제목입니다<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                <div class="slide2"><img src="resources/mainimg/004.jpg" style="width: 230px; height: 295px;">
                    <div>
                        여기는 제목입니다<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                <div class="slide2"><img src="resources/mainimg/003.jpg" style="width: 230px; height: 295px;">
                    <div>
                        여기는 제목입니다<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                <div class="slide2"><img src="resources/mainimg/002.jpg" style="width: 230px; height: 295px;">
                    <div>
                        여기는 제목입니다<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>
                <div class="slide2"><img src="resources/mainimg/001.jpg" style="width: 230px; height: 295px;">
                    <div>
                        여기는 제목입니다<br>
                        <p>
                            이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다이것은 내용입니다
                        </p>
                    </div>
                </div>

            </div>
            <div class="asbox2">


                <div class="asbox">
                    <button class="prev-button2"><img src="resources/mainimg/prev-button.png"
                            style="width: 30px;height: 30px;"></button>

                    <button class="next-button2"> <img src="resources/mainimg/next-button.png" style="width: 30px;height: 30px;">
                    </button>
                </div>
            </div>
            <div div class="fontwidth">꿀 TIP</div>
            <div class="boximg">

                <div class="image-container">
                    <img src="resources/mainimg/hoverevent1.jpg" alt="이미지 설명">
                    <div class="image-overlay" onclick="openPopup('popup1')">
                        <p class="tip">구경 하기</p>
                    </div>
                </div>

                <div class="image-container">
                    <img src="resources/mainimg/hoverevent2.jpg" alt="이미지 설명">
                    <div class="image-overlay" onclick="openPopup('popup2')">
                        <p class="tip">구경 하기</p>
                    </div>
                </div>

                <div class="image-container">
                    <img src="resources/mainimg/hoverevent3.jpg" alt="이미지 설명">
                    <div class="image-overlay" onclick="openPopup('popup3')">
                        <p class="tip">구경 하기</p>
                    </div>
                </div>

                <div class="image-container">
                    <img src="resources/mainimg/hoverevent4.jpg" alt="이미지 설명">
                    <div class="image-overlay" onclick="openPopup('popup4')">
                        <p class="tip">구경 하기</p>
                    </div>
                </div>

                <div class="popup" id="popup1">
                    <div class="close-popup" onclick="closePopup('popup1')">X</div>
                    <p>
                    <div class="slideshow-container">
                        <div class="mySlides">
                            <img src="resources/mainimg/tip0.png" style="width:100%">
                        </div>

                        <div class="mySlides">
                            <img src="resources/mainimg/tip0-1.png" style="width:100%">
                        </div>

                        <div class="mySlides">
                            <img src="resources/mainimg/tip0-2.png" style="width:100%">
                        </div>

                        <div class="mySlides">
                            <img src="resources/mainimg/tip0-3.png" style="width:100%">
                        </div>

                        <div class="mySlides">
                            <img src="resources/mainimg/tip0-4.png" style="width:100%">
                        </div>

                        <a class="prev3" onclick="plusSlides(-1)">❮</a>
                        <a class="next3" onclick="plusSlides(1)">❯</a>
                    </div>
                    </p>
                </div>

                <div class="popup" id="popup2">
                    <div class="close-popup" onclick="closePopup('popup2')">X</div>
                    <p>
                    <div class="slideshow-container">
                        <div class="mySlides">
                            <img src="resources/mainimg/tip2.png" style="width:100%">
                        </div>

                        <div class="mySlides">
                            <img src="resources/mainimg/tip2-1.png" style="width:100%">
                        </div>

                        <div class="mySlides">
                            <img src="resources/mainimg/tip2-2.png" style="width:100%">
                        </div>

                        <div class="mySlides">
                            <img src="resources/mainimg/tip2-3.png" style="width:100%">
                        </div>

                        <div class="mySlides">
                            <img src="resources/mainimg/tip2-4.png" style="width:100%">
                        </div>

                        <div class="mySlides">
                            <img src="resources/mainimg/tip2-5.png" style="width:100%">
                        </div>

                        <div class="mySlides">
                            <img src="resources/mainimg/tip2-6.png" style="width:100%">
                        </div>

                        <a class="prev3" onclick="plusSlides(-1)">❮</a>
                        <a class="next3" onclick="plusSlides(1)">❯</a>
                    </div>
                    </p>
                </div>

                <div class="popup" id="popup3">
                    <div class="close-popup" onclick="closePopup('popup3')">X</div>
                    <p>
                        <div class="slideshow-container">
                            <div class="mySlides">
                                <img src="resources/mainimg/tip3.png" style="width:100%">
                            </div>
    
                            <div class="mySlides">
                                <img src="resources/mainimg/tip3-1.png" style="width:100%">
                            </div>
    
                            <div class="mySlides">
                                <img src="resources/mainimg/tip3-2.png" style="width:100%">
                            </div>
    
                            <div class="mySlides">
                                <img src="resources/mainimg/tip3-3.png" style="width:100%">
                            </div>
    
                            <div class="mySlides">
                                <img src="resources/mainimg/tip3-4.png" style="width:100%">
                            </div>
    
                            <div class="mySlides">
                                <img src="resources/mainimg/tip3-5.png" style="width:100%">
                            </div>
    
                            <a class="prev3" onclick="plusSlides(-1)">❮</a>
                            <a class="next3" onclick="plusSlides(1)">❯</a>
                        </div>
                    </p>
                </div>

                <div class="popup" id="popup4">
                    <div class="close-popup" onclick="closePopup('popup4')">X</div>
                    <p>
                        <div class="slideshow-container">
                            <div class="mySlides">
                                <img src="resources/mainimg/tip1.png" style="width:100%">
                            </div>
    
                            <div class="mySlides">
                                <img src="resources/mainimg/tip1-1.png" style="width:100%">
                            </div>
    
                            <div class="mySlides">
                                <img src="resources/mainimg/tip1-2.png" style="width:100%">
                            </div>
    
                            <div class="mySlides">
                                <img src="resources/mainimg/tip1-3.png" style="width:100%">
                            </div>
    
                            <div class="mySlides">
                                <img src="resources/mainimg/tip1-4.png" style="width:100%">
                            </div>
    
                            <a class="prev3" onclick="plusSlides(-1)">❮</a>
                            <a class="next3" onclick="plusSlides(1)">❯</a>
                        </div>
                    </p>
                </div>
            </div>
        </div>

        <div class="none"></div>

        <div class="none"></div>
        <div class="fontwidth">이벤트</div>

        <div class="eventbigbox">
            <div class="eventbar">
                <a href="http://127.0.0.1:5502/%EB%AF%BC%EB%B4%89%ED%95%B4/events.html">
                    <img src="resources/mainimg/event1.jpg" style="width: 1100px; height: 180px;">
                </a>
                <a href="http://127.0.0.1:5502/%EB%AF%BC%EB%B4%89%ED%95%B4/events.html">
                    <img src="resources/mainimg/event2.jpg" style="width: 1100px; height: 180px;">
                </a>
            </div>
        </div>
        <div class="none"></div>
        <div class="fontwidth">오늘의 광고</div>

        <div class="eventbigbox2">
            <div class="eventbar">
                <img src="resources/mainimg/event.png" style="width: 1100px; height: 180px;">
            </div>
        </div>
        <div class="none"></div>
        
        <%@ include file="footer.jsp"%>
        
    </table>

</body>

<script>
    const slider1 = document.querySelector(".slider1");
    const prevButton1 = document.querySelector(".prev-button1");
    const nextButton1 = document.querySelector(".next-button1");

    let currentIndex1 = 0;

    // countSlide=document.querySelectorA


    nextButton1.addEventListener("click", () => {
        if (currentIndex1 < 6) {
            currentIndex1++;
            updateSlider1();
        }
        if(currentIndex1 == 6){
            currentIndex1 = 0;
            updateSlider1_1();
        }
    });

    prevButton1.addEventListener("click", () => {
        if (currentIndex1 > 0) {
            currentIndex1--;
            updateSlider1();
        }
        else if (currentIndex1 === 0) { // 추가된 부분
        currentIndex1 = 6;
        updateSlider1_1();
    }
    });



    function updateSlider1() {
        const translateXValue1 = -currentIndex1 * 310; // 각 슬라이드의 너비를 기반으로 이동값을 계산
        slider1.style.transform = `translateX(${translateXValue1}px)`;
    }
    function updateSlider1_1() {
        const translateXValue1 = 0; // 각 슬라이드의 너비를 기반으로 이동값을 계산
        slider1.style.transform = `translateX(${translateXValue1}px)`;
    }

    const slider2 = document.querySelector(".slider2");
    const prevButton2 = document.querySelector(".prev-button2");
    const nextButton2 = document.querySelector(".next-button2");

    let currentIndex2 = 0;

    // countSlide=document.querySelectorA


    nextButton2.addEventListener("click", () => {
        if (currentIndex2 < 6) {
            currentIndex2++;
            updateSlider2();
        }
        if(currentIndex2 == 6){
            currentIndex2 = 0;
            updateSlider2_2();
        }
    });

    prevButton2.addEventListener("click", () => {
        if (currentIndex2 > 0) {
            currentIndex2--;
            updateSlider2();
        }
    });



    function updateSlider2() {
        const translateXValue2 = -currentIndex2 * 310; // 각 슬라이드의 너비를 기반으로 이동값을 계산
        slider2.style.transform = `translateX(${translateXValue2}px)`;
    }
    function updateSlider2_2() {
        const translateXValue2 = 0; // 각 슬라이드의 너비를 기반으로 이동값을 계산
        slider2.style.transform = `translateX(${translateXValue2}px)`;
    }

    // 인디게이터 코드
    var idx_lgth = $("#visual>div").length;
    var srt = 1;

    $("section>a").click(function () {
        var idx = $(this).index();
        srt = idx;
        $(this).addClass('on').siblings().removeClass('on');
        $("#visual>div").eq(idx).addClass('on').siblings().removeClass('on');
    });

    setInterval(AutoRun, 5000);

    function AutoRun() {
        if (srt == idx_lgth) {
            srt = 0;
        }
        $("section>a").eq(srt).addClass('on').siblings().removeClass('on');
        $("#visual>div").eq(srt).addClass('on').siblings().removeClass('on');
        srt++;
    }

    let _popup = "popup1"

    function openPopup(popupId) {
        _popup = popupId
        showSlides(1)
        document.getElementById(popupId).style.display = 'block';
    }

    function closePopup(popupId) {
        document.getElementById(popupId).style.display = 'none';
    }


///////////////////////////////////////////

    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function showSlides(n) {
        var i;
        // var slides = document.getElementsByClassName("mySlides");
        var slides = document.querySelectorAll("#"+ _popup +" .mySlides");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slides[slideIndex - 1].style.display = "block";
    }
</script>
</html>