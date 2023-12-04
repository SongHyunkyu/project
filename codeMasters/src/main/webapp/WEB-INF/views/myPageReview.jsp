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
        
        /* 리뷰관리 */
        #review-history-contents{
            display: block;
            width: 100%;
            height: 100%;
        }
        .review-history-content{
            border-bottom: 1px solid black;
            height: 50px;
            display: flex;
            justify-content: space-between;
        }
        .review-history-content-text {
            display: flex;
            justify-content: space-between;
            margin-top: -5px;

        }
    
    </style>
    <script>
        let page = 1;

        let last_review = page*10;

        window.addEventListener("load", function(){
            bind();
        })

        function bind(){
            // 문의글 목록
            let xhr = new XMLHttpRequest();
            xhr.open("get", "myPageReview.json");
            xhr.send();
            xhr.onload = function(){
                let data = JSON.parse(xhr.responseText);	
                data.reverse();	
                if (last_review > data.length) {
                    last_review = data.length;
                }
                console.log(data);
                let html = '';
                 for(let i = (page-1)*10; i < last_review; i++){
                    let json = data[i];
                    html+= '    <div class="review-history-content"><input type="checkbox">';
                    html+= '        <div class="content_text" id="review-history-contents-'+(i+1)+'">';
                    html+= '            <div>'+json.title+'</div>';
                    html+= '            <div class="review-history-content-text">';
                    html+= '                <div id="review-'+(i+1)+'">'+json.detail+'</div>';
                    html+= '                <div>'+json.created_date+'</div>';
                    html+= '            </div>';
                    html+= '        </div>';
                    html+= '        <div class="content_btn">';
                    html+= '            <input type="button" value="수정" class="btn1">';
                    html+= '        </div>';
                    html+= '    </div>';
 
                };  
                    
                document.querySelector("#review-history-lists").innerHTML = html;
                

            }
        }
        
    </script>
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
            <!-- 리뷰 관리 컨텐츠 -->
            <div id="review-history-contents">
                <div class="contents_title"><div class="title_text">리뷰관리</div></div>
                <div id="review-history-lists">
                    <!-- 리뷰 글 목록 -->
                </div>
                
                <div class="buttons">
                    <div class="btn1" id="review-history-checked_delete">선택리뷰 삭제</div>
                    <div style="width: 102px;"></div>
                    <div class="paging" id="review-history-content-paging">
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
    <div class="none"></div>
	<%@ include file = "footer.jsp" %>
</body>
</html>