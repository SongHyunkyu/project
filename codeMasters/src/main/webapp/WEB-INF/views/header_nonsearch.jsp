<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.codemasters.project.dto.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
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
        #top-header {
            width: 98%;
            height: auto;
            display: inline-block;
            text-align: center;
            background-color: white;
  
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
            width: 20%;
            display: flex;
            top: 70px;
            right: 13%;
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

        .icon .btn {
            background-color: #5E5E5E;
            color: white;
            width: 100px;
            height: 40px;
            border-radius: 5px;
            border: 1px solid white;
        }

        #header-menus {
            display: inline-flex;
            margin-left: 10px;
            width: 60%;
            height: 50px;
            justify-content: space-around;
        }


        /* 서브메뉴선택 */
        * {
            padding: 0;
            margin: 0;
        }

        #header-menus li {
            list-style: none;
        }

        #header-menus a {
            text-decoration: none;
            font-size: 14px;
        }

        #header-menus #m1 {
            font-size: 25px;
            font-weight: bold;
            /* 줄 바꿈 방지 */
            white-space: nowrap;
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
        
        .menu input {
        	border: 0;
        	background-color: white;
        	font-family: 'Cafe24Supermagic-Bold-v1.0';
        	font-size: 25px;
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

        @media screen and (max-width: 600px) {
            #top-header {
                text-align: left;
            }

            #title {
                margin-top: 10px;
                margin-left: 40px;
            }

            #title img {
                height: 120px;
            }

            #icons {
                width: 40%;
                margin-top: 10px;
            }
            #icons .btn {
                width: 80px;
            }

            #header-menus {
                display: inline-flex;
                width: 100%;
                height: 50px;
                justify-content: space-around;
            }
            #header-menus #m1 {
                font-size: 20px;
            }
            
        }
    </style>


</head>

<body>
    <div id="top-header">
    	<form action="/project/main" method="post">
        	<div id="title">
        		<input type="image" src="resources/img/title_bookmasters.png" height="150px">
        	</div>
    	</form>
        <div id="icons">
            <a href="
            <%MemberDTO user = (MemberDTO) session.getAttribute("user");
                // 로그인상태 확인
				boolean isLoggedIn = (user != null);
				int userGrade = -1;
				if ( isLoggedIn ) {
					userGrade = user.getMember_grade();				
				} else {
					System.out.println("로그아웃상태");
				}
				System.out.println("userGrade: " + userGrade);
				
				if ( isLoggedIn ) {%>
            	baguni.jsp
           	<%} else {%>
           		login.jsp
           	<%}%>
            "><div class="icon"><img src="resources/img/cart.png" class="header_icon"></div></a>
			<form action="
			<% 
                // 유저 등급확인
                if ( userGrade == 1 ) {%>
                    myPageHome.jsp
                <%} else if ( userGrade == 2 ) {%>
                    managerHome.jsp
                <%} else if ( userGrade == 0 ) {%>
                    alert('정지된 계정입니다.');
                <%} else {%>
                    login.jsp
                <%}%>
                " method="post">
            	<div class="icon">
          			<input type="image" src="resources/img/user.png" width="40px">
            	</div>
			</form>
            <% if ( isLoggedIn ) {%>
	            <form action="/project/logout" method="post">
	            <div class="icon">
	            	<input type="image" src="img/lock_free.png" width="40px">
	            </div>    	
	            </form> 
            <%}%>
            <a href="Contact_Us_Write.jsp"><div class="icon"><input type="button" value="문의하기" class="btn"></div></a>
        </div>

        <div id="header-menus">
            <ul class="menu">
                <li>
            		<form action="purchasingpage" method="get">
                		<input type="hidden" name="sort" value="2">
                    	<input type="submit" value="베스트">
            		</form>
                </li>
            </ul>
            <ul class="menu">
            <li>
            	<form action="purchasingpage" method="get">
                    <input type="hidden" name="sort" value="1">
                    <input type="submit" value="신간도서">
	            </form>
            </li>
            </ul>
            <ul class="menu">
                <li>
                    <a href="goEvents" id="m1">이벤트</a>
                </li>
            </ul>
            <ul class="menu">
                <li>
                    <a href="Contact_Us_Mainpage.jsp" id="m1">고객지원</a>
                    <ul class="submenu show">
                        <li><a href="Notice_Main.jsp">공지사항</a></li>
                        <li><a href="Questions.jsp">자주묻는질문</a></li>
                        <li><a href="Contact_Us_Write.jsp">문의하기</a></li>
                        <li><a href="SuggestionWrite.jsp">제안하기</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="menu" id="hamburger-menu">
                <li>
                    <a href="#" id="m1" class="m1_1">
                        <img src="resources/img/hamburger.png">
                        <!-- <ul class="submenu show aa">
                            <li><a href="">---</a></li>
                            <li><a href="">---</a></li>
                            <li><a href="">---</a></li>
                            <li><a href="">---</a></li>
                            <li><a href="">---</a></li>
                        </ul> -->
                    </a>
                </li>
            </ul>

        </div>
    </div>
    <div id="hamburger-margin"></div>
</body>

<script>
    
    // // 햄버거 버튼 요소를 가져옵니다.
    // const hamburgerButton = document.querySelector('.m1_1');
    
    // // 모든 서브메뉴 요소를 가져옵니다.
    // const submenus = document.querySelectorAll('.submenu');
    
    // // 햄버거 버튼 클릭 상태를 저장하는 변수를 만듭니다.
    // let isHamburgerClicked = false;
    
    // // 햄버거 버튼 클릭 시 이벤트 리스너를 추가합니다.
    // hamburgerButton.addEventListener('click', (e) => {
        //     // 클릭 이벤트를 중단하여 호버 효과가 유지되도록 합니다.
        //     e.preventDefault();
        
        //     // 햄버거 버튼 클릭 상태를 토글합니다.
        //     isHamburgerClicked = !isHamburgerClicked;
        
        //     // 모든 서브메뉴 요소를 숨기는 클래스를 추가하고 제거합니다.
        //     submenus.forEach(submenu => {
            //         if (isHamburgerClicked) {
                //             submenu.classList.add('show');
                //         } else {
                    //             submenu.classList.remove('show');
                    //         }
    //     });
    // });
    
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
</script>

</html>