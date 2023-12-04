<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 페이지 </title>.
<%@ include file="header.jsp" %>
<style>
body {
    margin: 0;
    font-family: 'Cafe24Supermagic-Bold-v1.0';
}
/* 헤더 */
@font-face {
    font-family: 'Cafe24Supermagic-Bold-v1.0';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}
.btn {
    font-family: 'Cafe24Supermagic-Bold-v1.0';
}





/* 서브메뉴선택 */
* {
    padding: 0;
    margin: 0;
}


/* 메뉴바 부분 작성 */
.menu {
    width: 340px;
    /* overflow: hidden; */
    /* margin: 150px auto; */
}

.menu>li {
    /* width: 20%; */
    /* 20*5=100% */
    /* float: left; */
    text-align: center;
    line-height: 40px;
    background-color: #fff;
}

.menu a {
    color: black;
}

.submenu>li {
    line-height: 50px;
    /* border: 1px solid rgb(218, 241, 225); */
}
.submenu>li :hover {
    line-height: 50px;
    border-bottom: 2px solid rgb(89, 236, 133);
}

.submenu {
    height: 0;
    /*ul의 높이를 안보이게 처리*/
    overflow: hidden;
    /* border-radius: 10px; */
}

/* hover했을때 */
.menu>li:hover {
    border: 1px solid rgb(218, 241, 225);
    transition-duration: 0.5s;
    border-radius: 10px;
    background-color: white;
    position: relative;
    z-index: 1;
}

.menu>li:hover .submenu {
    height: 250px;
    /*서브메뉴 li한개의 높이 50*5*/
    transition-duration: 1s;
}

.m1_1 img {
    width: 44px;
    display: block;
    margin: auto;
}



/*  */
.submenu.show,
.submenu-below-hamburger.show {
    height: 250px;
}

.submenu:hover,
.submenu-below-hamburger:hover {
    height: auto !important;
}

#hamburger-margin {
    width: 100%;
    height: 250px;
    display: none;
}
@media screen and (max-width: 700px) {
    .search {
        width: 400px;
        min-width: 0;
    }
}

@media screen and (max-width: 600px) {
    #top-header {
        text-align: left;
    }

    
}


.main_menu {
    padding-top: 80px;
    margin: 0 auto;
    width: 80%;
    display: flex;
    justify-content: space-around;
    font-size: 30px;
}

.main_menu .menu_1 {
    text-align: center;
    width: 100%;
    border : solid 2px rgba(174, 223, 189, 0.988);
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
}

.main_menu .menu_2 {
    text-align: center;
    width: 100%;
    border-bottom: solid 2px rgba(174, 223, 189, 0.988);
    
}

.main_menu .menu_3 {
    text-align: center;
    width: 100%;
    border-bottom: solid 2px rgba(174, 223, 189, 0.988)
   
}

.bon .bon_name_mom {
    width: 80%;
    margin: 0 auto;
    margin-top: 60px;
    border: solid 3px rgb(165, 225, 183);
    border-radius: 10px;
    padding-top: -50px;
}

.bon .bon_name {
    font-size: 20px;
    margin: 0 auto;
    display: flex;
    justify-content: space-around;
    align-items: center;

}

.bon .bon_name .bon_name_1 {
    flex-grow: 1;
    width: 0;
    padding-top: 20px;
    height: 40px;
    text-align: center;
}

.bon .bon_name .bon_name_2 {
    flex-grow: 5;
    padding-top: 20px;
    height: 40px;
    text-align: center;
}

.bon .bon_name .bon_name_3 {
    flex-grow: 2;
    padding-top: 20px;

    height: 40px;
    text-align: center;
}

.bon .bon_nae {
    font-size: 20px;
    margin: 0 auto;
    padding-top: 30px;
    width: 80%;
    display: flex;
    justify-content: space-around;
    border-bottom: solid 1px #837f7f;
}

.bon .bon_nae .bon_border_1 {
    flex-grow: 1;
    height: 40px;
    text-align: center;
    border-right: solid 1px #837f7f;

}

.bon .bon_nae .bon_border_2 {
    flex-grow: 5;
    height: 40px;
    text-align: center;
    border-right: solid 1px #837f7f;

}

.bon .bon_nae .bon_border_3 {
    flex-grow: 2;
    height: 40px;
    text-align: center;
}

.number {
    font-size: 20px;
    margin: 0 auto;
    margin-top: 30px;
    width: 200px;
    display: flex;
    justify-content: space-around;
    text-align: center;
}

a {
    text-decoration: none;
    color: black;
}

.number_1 {
    margin: 0 20px;
    height: 25px;
    width: 50px;
    border-radius: 10px;
    border: none;
}



a:visited{
           
    color:black ;
}
a{
    text-decoration-line: none;
}

	<title>공지사항</title>

  
      

       
       
        }

        

        /* 서브메뉴선택 */
        * {
            padding: 0;
            margin: 0;
        }

      
        /* 메뉴바 부분 작성 */
        .menu {
            width: 340px;
            /* overflow: hidden; */
            /* margin: 150px auto; */
        }

        .menu>li {
            /* width: 20%; */
            /* 20*5=100% */
            /* float: left; */
            text-align: center;
            line-height: 40px;
            background-color: #fff;
        }

        .menu a {
            color: black;
        }

        .submenu>li {
            line-height: 50px;
            /* border: 1px solid rgb(218, 241, 225); */
        }

        .submenu>li :hover {
            line-height: 50px;
            border-bottom: 2px solid rgb(89, 236, 133);
        }

        .submenu {
            height: 0;
            /*ul의 높이를 안보이게 처리*/
            overflow: hidden;
            /* border-radius: 10px; */
        }

        /* hover했을때 */
        .menu>li:hover {
            border: 1px solid rgb(218, 241, 225);
            transition-duration: 0.5s;
            border-radius: 10px;
            background-color: white;
            position: relative;
            z-index: 1;
        }

        .menu>li:hover .submenu {
            height: 250px;
            /*서브메뉴 li한개의 높이 50*5*/
            transition-duration: 1s;
        }

        .m1_1 img {
            width: 44px;
            display: block;
            margin: auto;
        }



        /*  */
        .submenu.show,
        .submenu-below-hamburger.show {
            height: 250px;
        }

        .submenu:hover,
        .submenu-below-hamburger:hover {
            height: auto !important;
        }

        

      {
           
         


        .main_menu {
            padding-top: 80px;
            margin: 0 auto;
            width: 80%;
            display: flex;
            justify-content: space-around;
            font-size: 30px;
        }

        .main_menu .menu_1 {
            text-align: center;
            width: 100%;
            border: solid 2px rgba(174, 223, 189, 0.988);
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
        }

        .main_menu .menu_2 {
            text-align: center;
            width: 100%;
            border-bottom: solid 2px rgba(174, 223, 189, 0.988);

        }

        .main_menu .menu_3 {
            text-align: center;
            width: 100%;
            border-bottom: solid 2px rgba(174, 223, 189, 0.988)
        }

        .bon .bon_name_mom {
            width: 80%;
            margin: 0 auto;
            margin-top: 60px;
            border: solid 3px rgb(165, 225, 183);
            border-radius: 10px;
            padding-top: -50px;
        }

        .bon .bon_name {
            font-size: 20px;
            margin: 0 auto;
            display: flex;
            justify-content: space-around;
            align-items: center;

        }

        .bon .bon_name .bon_name_1 {
            flex-grow: 1;
            width: 0;
            padding-top: 20px;
            height: 40px;
            text-align: center;
        }

        .bon .bon_name .bon_name_2 {
            flex-grow: 5;
            padding-top: 20px;
            height: 40px;
            text-align: center;
        }

        .bon .bon_name .bon_name_3 {
            flex-grow: 2;
            padding-top: 20px;

            height: 40px;
            text-align: center;
        }

        .bon .bon_nae {
            font-size: 20px;
            margin: 0 auto;
            padding-top: 30px;
            width: 80%;
            display: flex;
            justify-content: space-around;
            border-bottom: solid 1px #837f7f;
        }

        .bon .bon_nae .bon_border_1 {
            flex-grow: 1;
            height: 40px;
            text-align: center;
            border-right: solid 1px #837f7f;

        }

        .bon .bon_nae .bon_border_2 {
            flex-grow: 5;
            height: 40px;
            text-align: center;
            border-right: solid 1px #837f7f;

        }

        .bon .bon_nae .bon_border_3 {
            flex-grow: 2;
            height: 40px;
            text-align: center;
        }

        .number {
            font-size: 20px;
            margin: 0 auto;
            margin-top: 30px;
            width: 200px;
            display: flex;
            justify-content: space-around;
            text-align: center;
        }

        a {
            text-decoration: none;
            color: black;
        }

        .number_1 {
            margin: 0 20px;
            height: 25px;
            width: 50px;
            border-radius: 10px;
            border: none;
        }



        a:visited {

            color: black;
        }

        a {
            text-decoration-line: none;
        }

        .number_1:hover{
            cursor: pointer;
        }
        
        
       .page-link, write-button {
    display: block;
    position: fixed;
    bottom: 20px;
    right: 20px;
    background-color: black;
    color: white;
    border: none;
    cursor: pointer;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    transition: background-color 0.3s, color 0.3s;
}

.page-link, write-button:hover {
    background-color: rgba(174, 223, 189, 0.988);
    color: black;
}
   
        
    </style>
    
    <script>

      


  
        window.onload = function () {



            // 페이지가 로드될 때 실행될 함수
            document.addEventListener('DOMContentLoaded', function () {
                // 모든 서브 메뉴 요소를 선택합니다.
                const submenus = document.querySelectorAll('.submenu, .submenu-below-hamburger');

                // 모든 서브 메뉴의 'show' 클래스를 제거하여 초기에는 숨깁니다.
                submenus.forEach(submenu => {
                    submenu.classList.remove('show');
                });
            });

            // 햄버거 버튼 요소를 선택합니다.
            const hamburgerButton = document.querySelector('.m1_1');

            // 모든 서브 메뉴 요소를 선택합니다.
            const submenus = document.querySelectorAll('.submenu');

            // 모든 햄버거 아래 서브 메뉴 요소를 선택합니다.
            const submenusBelowHamburger = document.querySelectorAll('.submenu-below-hamburger');

            // 햄버거 버튼 클릭 상태를 저장하는 변수를 만듭니다.
            let isHamburgerClicked = false;

            // 햄버거 버튼 클릭 시 이벤트 리스너를 추가합니다.
            hamburgerButton.addEventListener('click', (e) => {
                // 클릭 이벤트를 중단하여 호버 효과가 유지되도록 합니다.
                e.preventDefault();

                // 햄버거 버튼 클릭 상태를 토글합니다.
                isHamburgerClicked = !isHamburgerClicked;
                document.querySelector("#hamburger-margin").style.display = 'block';

                // 모든 메뉴의 서브 메뉴를 토글하여 보이거나 숨깁니다.
                submenus.forEach(submenu => {
                    if (isHamburgerClicked) {
                        submenu.classList.add('show'); // 보이게 설정
                    } else {
                        submenu.classList.remove('show'); // 숨기게 설정
                        document.querySelector("#hamburger-margin").style.display = 'none';

                    }
                });

                // 햄버거 아래의 서브 메뉴도 토글하여 보이거나 숨깁니다.
                submenusBelowHamburger.forEach(submenu => {
                    if (isHamburgerClicked) {
                        submenu.classList.add('show'); // 보이게 설정
                    } else {
                        submenu.classList.remove('show'); // 숨기게 설정
                    }
                });
            });



        };
        
        
</script>
        </head>
        <body>
        	<form>
        	
        							
        

    
    <div id="hamburger-margin"></div>


    <div class="main_menu">
        <a class="menu_1"
            href="/project/notice_main.jsp">
            <div>
                공지사항
            </div>
        </a>
        <a class="menu_2" href="/project/question.jsp">
            <div>
                자주묻는질문
            </div>
        </a>
        <a class="menu_3"
            href="/project/contact_us_mainpage.jsp">
            <div>
                문의하기
            </div>
        </a>
    </div>

    <div class="bon">
        <div class="bon_name_mom">
            <div class="bon_name">
                <div class="bon_name_1">번호</div>
                <div class="bon_name_2">제목</div>
                <div class="bon_name_3">작성일</div>
            </div>
        </div>
        <div class="bon_nae">
            <div class="bon_border_1">102</div>
            <div class="bon_border_2"><a
                    href="http://localhost:8080/Project_2/Notice.jsp#">안녕하세요
                    북마스터스입니다.</a></div>
            <div class="bon_border_3">2023.06.20</div>
        </div>
        <div class="bon_nae">
            <div class="bon_border_1">101</div>
            <div class="bon_border_2"><a
                    href="http://localhost:8080/Project_2/Notice.jsp#">안녕하세요
                    북마스터스입니다.</a></div>
            <div class="bon_border_3">2023.06.19</div>
        </div>
        <div class="bon_nae">
            <div class="bon_border_1">100</div>
            <div class="bon_border_2"><a
                    href="http://localhost:8080/Project_2/Notice.jsp#">안녕하세요
                    북마스터스입니다.</a></div>
            <div class="bon_border_3">2023.06.18</div>
        </div>
        <div class="bon_nae">
            <div class="bon_border_1">99</div>
            <div class="bon_border_2"><a
                    href="http://localhost:8080/Project_2/Notice.jsp#">안녕하세요
                    북마스터스입니다.</a></div>
            <div class="bon_border_3">2023.06.17</div>
        </div>
        <div class="bon_nae">
            <div class="bon_border_1">98</div>
            <div class="bon_border_2"><a
                    href="http://localhost:8080/Project_2/Notice.jsp#">안녕하세요
                    북마스터스입니다.</a></div>
            <div class="bon_border_3">2023.06.16</div>
        </div>

        <div class="bon_nae">
            <div class="bon_border_1">97</div>
            <div class="bon_border_2"><a
                    href="http://localhost:8080/Project_2/Notice.jsp#">안녕하세요
                    북마스터스입니다.</a></div>
            <div class="bon_border_3">2023.06.15</div>
        </div>
        <div class="bon_nae">
            <div class="bon_border_1">96</div>
            <div class="bon_border_2"><a
                    href="http://localhost:8080/Project_2/Notice.jsp#">안녕하세요
                    북마스터스입니다.</a></div>
            <div class="bon_border_3">2023.06.14</div>
        </div>
        <div class="bon_nae">
            <div class="bon_border_1">95</div>
            <div class="bon_border_2"><a
                    href="http://localhost:8080/Project_2/Notice.jsp#">안녕하세요
                    북마스터스입니다.</a></div>
            <div class="bon_border_3">2023.06.13</div>
        </div>
        <div class="bon_nae">
            <div class="bon_border_1">94</div>
            <div class="bon_border_2"><a
                    href="http://localhost:8080/Project_2/Notice.jsp#">안녕하세요
                    북마스터스입니다.</a></div>
            <div class="bon_border_3">2023.06.12</div>
        </div>
        
    <br>
    <br>
    
    <!-- 로드된 데이터를 표시할 컨테이너 추가 -->
<div id="notice-container"></div>
    
<<nav aria-label="Page navigation">
        <div class="pagination" style="display: flex; justify-content: center; align-items: center;">
            <c:if test="${currentPage > 1}">
                <a class="page-link" href="#" aria-label="Previous" id="prevPage">
                    <span aria-hidden="true">←</span> &nbsp;&nbsp;
                </a>
            </c:if>

            <c:forEach var="page" begin="1" end="${totalPages}">
                <c:choose>
                    <c:when test="${page == currentPage}">
                        <span class="page-link current-page">${page}</span>
                    </c:when>
                    <c:otherwise>
                        <a class="page-link" href="#" id="page${page}">${page}</a> &nbsp;&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>

            <c:if test="${currentPage < totalPages}">
                <a class="page-link" href="#" aria-label="Next" id="nextPage">
                    <span aria-hidden="true">→</span>
                </a>
            </c:if>
        </div>
    </nav>

    <!-- 공지사항 목록 표시 -->
    <div class="bon">
        <c:forEach var="notice" items="${noticeList}">
            <div class="bon_nae">
                <div class="bon_border_1">${notice.id}</div>
                <div class="bon_border_2">
                    <a href="<%=request.getContextPath()%>/Notice.jsp">${notice.title}</a>
                </div>
                <div class="bon_border_3">${notice.date}</div>
            </div>
        </c:forEach>
    </div>

    <%-- 페이지 링크 생성 --%>
    <div class="pagination" style="display: flex; justify-content: center; align-items: center;">
        <c:if test="${currentPage > 1}">
            <a class="page-link" href="<%=request.getContextPath()%>/NoticeServlet?page=1">처음</a>
            <a class="page-link" href="<%=request.getContextPath()%>/NoticeServlet?page=${currentPage - 1}">이전</a>
        </c:if>
        <c:forEach var="page" begin="1" end="${totalPages}">
            <c:choose>
                <c:when test="${page == currentPage}">
                    <span class="page-link current-page">${page}</span>
                </c:when>
                <c:otherwise>
                    <a class="page-link" href="<%=request.getContextPath()%>/NoticeServlet?page=${page}">${page}</a>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:if test="${currentPage < totalPages}">
            <a class="page-link" href="<%=request.getContextPath()%>/NoticeServlet?page=${currentPage + 1}">다음</a>
            <a class="page-link" href="<%=request.getContextPath()%>/NoticeServlet?page=${totalPages}">마지막</a>
        </c:if>
    </div>
</form>


</body>
<%@ include file="footer.jsp" %>
</html>