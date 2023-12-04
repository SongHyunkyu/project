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
			<form action="
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
	            	<input type="image" src="resources/img/lock_free.png" width="40px">
	            </div>    	
	            </form> 
            <%}%>
         </div>
    </div>
</body>

</html>