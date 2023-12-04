<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.codemasters.project.dto.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
        #mypage-menus {
            background-color: rgb(218, 241, 225);
            width: 20%;
            height: 100%;
            font-size: 20px;
            font-weight: bold;
        }
        .mypage-menu {
            margin-top: 15%;
            margin-left: 5%;
            display: flex;
        }
        .menu_img {
            width: 50px;
            height: 50px;
            margin-right: 10px;
        }
        .menu_img img {
            width: 100%;
            height: 100%;
        }
        .menu-text {
            line-height: 60px;
        }
        .mypage-menu input {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            border: 0px;
            margin-right: 10px;
            background-color: rgb(218, 241, 225);
            font-size: 20px;
        }
</style>
<body>
<%MemberDTO user_menu = (MemberDTO) session.getAttribute("user");%>
        <div id="mypage-menus">
            <form action="myPageHome" method="post">
                <div class="mypage-menu" id="purchase-history">
	                <input type="hidden" name="member_number" value="<%=user_menu.getMember_number()%>">
                    <input type="image" src="resources/img/gift.png" width="50px">
                    <input type="submit" value="구매내역">
                </div>
            </form>
            <form action="myPageInquiry.jsp" method="post">
                <div class="mypage-menu" id="purchase-history">
	                <input type="hidden" name="member_number" value="<%=user_menu.getMember_number()%>">
                    <input type="image" src="resources/img/headphone.png" width="50px">
                    <input type="submit" value="문의내역">
                </div>            
            </form>
            <form action="myPageReview.jsp" method="post">
                <div class="mypage-menu" id="review-history">
	                <input type="hidden" name="member_number" value="<%=user_menu.getMember_number()%>">
                    <input type="image" src="resources/img/speechbubble.png" width="50px">
                    <input type="submit" value="리뷰관리">
                </div>
            </form>
            <form action="myPageInfo" method="post">
                <div class="mypage-menu" id="my_infomation">
	                <input type="hidden" name="member_number" value="<%=user_menu.getMember_number()%>">
                    <input type="image" src="resources/img/user.png" width="50px">
                    <input type="submit" value="사용자정보">
                </div>
            </form>
            <form action="myPageDelivery.jsp" method="post">
                <div class="mypage-menu" id="delivery-tracking">
                	<input type="hidden" name="member_number" value="<%=user_menu.getMember_number()%>">
                    <input type="image" src="resources/img/delivery.png" width="50px">
                    <input type="submit" value="배송조회">
                </div>
            </form>
        </div>
</body>
</html>