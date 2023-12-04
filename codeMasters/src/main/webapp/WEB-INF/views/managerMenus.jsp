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
<title>Insert title here</title>
</head>
<style>
	    #manager-menus {
            background-color: rgb(218, 241, 225);
            width: 20%;
            height: 100%;
            font-size: 20px;
            font-weight: bold;
        }
        .manager-menu {
            margin-top: 15%;
            margin-left: 5%;
            display: flex;
            height: 60px;
            line-height: 60px;
        }
        .manager-menu input {
            font-family: 'Cafe24Supermagic-Bold-v1.0';
            border: 0px;
            background-color: rgb(218, 241, 225);
            font-size: 20px;
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
</style>
<body>
		<div id="manager-menus">
            <div class="manager-menu" id="book-management">
                <form action="/project/managerBook" method="post">
                    <input type="hidden" name="menu" value="home">
                    <input type="image" src="resources/img/gift.png" width="50px">
                    <input type="submit" value="상품관리">
                </form>
            </div>
            <div class="manager-menu" id="order-management">
                <form action="managerOrder.jsp" method="post">
                    <input type="hidden" name="menu" value="order">
                    <input type="image" src="resources/img/cart.png" width="50px">
                    <input type="submit" value="주문관리">
                </form>
            </div>
            <div class="manager-menu" id="member-management">
                <form action="/project/managerMember" method="post">
                    <input type="hidden" name="menu" value="member">
                    <input type="image" src="resources/img/user.png" width="50px">
                    <input type="submit" value="회원관리">
                </form>
            </div>
            <div class="manager-menu" id="list-management">
                <form action="/project/managerNotice" method="post">
                    <input type="hidden" name="menu" value="list">
                    <input type="image" src="resources/img/documents.png" width="50px">
                    <input type="submit" value="게시판관리">
                </form>
            </div>
            <div class="manager-menu" id="inquiry-management">
                <form action="/project/managerInquiry" method="post">
                    <input type="hidden" name="menu" value="book">
                    <input type="image" src="resources/img/phone.png" width="50px">
                    <input type="submit" value="문의관리">
                </form>
            </div>
        </div>
</body>
</html>