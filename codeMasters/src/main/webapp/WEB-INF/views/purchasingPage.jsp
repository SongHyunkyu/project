<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
    <title>구매페이지</title>
    <style>
        body {
            margin: 0;
            font-family: 'Cafe24Supermagic-Bold-v1.0';
        }
        /* 본문 */
        .menu {
            margin-top: 1%;
            font-size: 25px;
            font-weight:bold
        }
        a {
        	text-decoration: none;
        	color: black;
        }
        #categories {
            border-bottom: 1px solid black;
            height: 60px;
            width: 70%;
            margin: 30px auto 30px auto;
            display: flex;
            font-size: 18px;        
        }
        .category {
            margin-left: 2%;
            margin-right: 2%;
        }
        #books {
            width: 70%;
            height: auto;
            margin: auto;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .book {
            margin: 2%;
            width: 25%;
        }
        @media screen and (max-width: 700px) {
            #categories {
                margin-left: 140px;
            }
            #books {
                margin: auto;
                margin-left: 130px;
            }
            .book {
                width: 45%;
            }
        }
        @media screen and (max-width: 490px) {
            #categories {
                margin-left: auto;
                width: 95%;
            }
            #books {
                margin: auto;
                margin-left: auto;
                width: 95%;
            }
            .book {
                width: 45%;
            }
        }
        .book img {
            width: 100%;
        }
        .book .book-name {
            margin: 10px auto 0 auto;
            font-weight: bold;
            width: 100%;
            display: block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .book .star {
            display: flex;
            width: 100px;
            height: 20px;
        }
        .book .book-author {
            width: 100%;
            display: block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .book .price {
            width: 100%;
            display: block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        #paging {
            margin: 20px auto auto auto;
            width: 200px;
            height: 30px;
            display: flex;
            justify-content: center;
            text-align: center;
        }
        #paging form {
        	margin: 0 10px;
        }
        .jspaging input {
        	border: 10px;
        	background-color: white;
        	font-family: 'Cafe24Supermagic-Bold-v1.0';
        	font-size: 15px
        }
        #recommend-banner {
            background-color: white;
            width: 14%;
            height: 0;
            text-align: center;
            position: sticky;
            top: 5%;
            left: 0;
        }
        #recommend-banner img {
            width: 100%;
        }
        .recommend {
            margin-top: 10px;
            font-size: 20px;
            font-weight: bold;
        }
        .recommend-title{
            width: 100%;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        @media screen and (max-width: 700px) {
            #recommend-banner {
                width: 25%;
            }
        }
        @media screen and (max-width: 490px) {
            #recommend-banner {
                display: none;
            }
        }
        #up {
            position: fixed;
            right: 10px;
            bottom: 20px;
        }
        .category {
        	margin-left: 15px;
        	margin-right: 15px;
        }
        .category input {
        	border: 0px;
        	background-color: white;
        	font-family: 'Cafe24Supermagic-Bold-v1.0';
        	font-size: 18px
        }
        
        .none {
        	margin-top: 300px;
        }
        .page input {
        	border: 10px;
        	background-color: white;
        	font-family: 'Cafe24Supermagic-Bold-v1.0';
        	font-size: 15px;
        	margin: 0 auto;
        }
        </style>

</head>

<body>
<%
	//model에 넣은 "data" 가져오기
			Map data = (Map) request.getAttribute("data");
			
			int total = (Integer) data.get("total");
			int pageNum = (Integer) data.get("pageNum");
			int sort = (Integer) data.get("sort");
			String searchInput = (String) data.get("book_name");
			// 한번에 보여줄 글의 개수
			int countPerPage = (Integer) data.get("countPerPage");
			
%>
	 <%@ include file ="header.jsp" %>
    <div id="hamburger-margin"></div>
    <div id="recommend-banner">
        <div id="recommend-best">
            <div class="recommend">BEST</div><br>
            <img src="${bestBook[0].book_img}"><br>
            ${bestBook[0].book_name}
            <div class="recommend-title" id="best-recommend"></div><br>
        </div>
        
        <div id="recommend-new">
            <div class="recommend">NEW</div><br>
            <img src="${newBook[0].book_img}"><br>
            ${newBook[0].book_name}
            <div class="recommend-title" id="new-recommend"></div><br>
        </div>
    </div>
	    <div id="categories">
	        <div style="font-weight: bold;">정렬</div>
		    <form action="purchasingpage" method="post">
	        	<div class="category">
	        		<input type="hidden" name="sort" value="1">
	        		<input type="hidden" name="book_name" value="<%=searchInput%>">
	        		<input type="hidden" name="pageNum" value="1">
	        		<input type="submit" value="신간">
	        	</div>
   			</form>
   			<div>/</div>
		    <form action="purchasingpage" method="post">
	        	<div class="category">
	        		<input type="hidden" name="sort" value="2">
	        		<input type="hidden" name="book_name" value="<%=searchInput%>">
	        		<input type="hidden" name="pageNum" value="1">
	        		<input type="submit" value="베스트셀러">
	        	</div>
   			</form>
   			<div>/</div>
		    <form action="purchasingpage" method="post">
	        	<div class="category">
	        		<input type="hidden" name="sort" value="3">
	        		<input type="hidden" name="book_name" value="<%=searchInput%>">
	        		<input type="hidden" name="pageNum" value="1">
	        		<input type="submit" value="별점순">
	        	</div>
   			</form>
   			<div>/</div>
		    <form action="purchasingpage" method="post">
	        	<div class="category">
	        		<input type="hidden" name="sort" value="4">
	        		<input type="hidden" name="book_name" value="<%=searchInput%>">
	        		<input type="hidden" name="pageNum" value="1">
	        		<input type="submit" value="추천순">
	        	</div>
   			</form>

	    </div>
    <div id="books">
        <!--책 목록-->
        <c:forEach var="book" items="${data.list}" varStatus="status">
        	<div class="book">
	        	<div>
	        		<a href='/project/goBookDetail?book_number=${book.book_number}'>
	                	<img src="${book.book_img}" style="width: 70%;">
	                </a>
	        	</div>
	        	<div class="book-name">
	                ${book.book_name}
	        	</div>
	        	<div class="star">
      				<c:forEach begin="0" end="4" var="i">
      					<c:choose>
      						<c:when test="${(book.star_sum / book.star_count)-i > 0 and (book.star_sum / book.star_count)-i < 1}">
      							<img src="resources/img/star0.5.png">
      						</c:when>
      						<c:when test="${i < (book.star_sum / book.star_count) and (book.star_sum / book.star_count) < 6}">
      							<img src="resources/img/star1.png">	
      						</c:when>
      						<c:otherwise>
      							<img src="resources/img/star0.png">
      						</c:otherwise>
      					</c:choose> 
      				</c:forEach>          		
	                <div class="recomendation">(${book.star_count})</div>
	        	</div>
	        		추천수 ${book.like_count}
	        	<div class="book-author">
	               	${book.author} / ${book.publisher}
	        	</div>
	        	<div class="price">
	               	${book.book_price} 원
	        	</div>
	        </div>
        </c:forEach>
    </div>
    <div id="paging">
    	<!-- 페이징 -->
    	
    
	<%
	
		
		// 전체 페이지의 수
		// 올림 ( 전체 글의 수 / 한번에 보여줄 글의 수 )
		// 12 / 5 >> 2.4 >> ceil결과 3.0 >> int 변수에 저장 >> 3
		int totalPaging = (int) Math.ceil( (double)total / countPerPage );
		
		// 한번에 보여줄 페이지의 개수
		int groupCount = 10;
		
		// 현제 페이지가 몇번째 그룹에 있는지
		int position = (int) Math.ceil( (double)pageNum / groupCount );
		
		// 현재 그룹에 첫번째 페이지 번호
		int beginPaging = ((position-1) * groupCount) + 1;
		int endPaging = position * groupCount;
		
		if(endPaging > totalPaging){
			endPaging = totalPaging;
		}

		
		if(beginPaging == 1){
			out.println("[이전]");
		} else {
			out.println("<form action='/project/purchasingpage' method='post' class='page'><input type='hidden' value="+searchInput+" name='book_name'><input type='hidden' value="+sort+" name='sort'><input type='hidden' value="+ (beginPaging-1) +" name='pageNum'><input type='submit' value='[이전]'></form>");
		}
	
		for(int i=beginPaging; i<=endPaging; i++){
			if(i == pageNum){
				out.println("<form action='/project/purchasingpage' method='post' class='page'><input type='hidden' value="+searchInput+" name='book_name'><input type='hidden' value="+sort+" name='sort'><input type='hidden' value="+ i +" name='pageNum'><input type='submit' value="+i+" style='font-size: 18px'></form>");
			} else {
				out.println("<form action='/project/purchasingpage' method='post' class='page'><input type='hidden' value="+searchInput+" name='book_name'><input type='hidden' value="+sort+" name='sort'><input type='hidden' value="+ i +" name='pageNum'><input type='submit' value="+i+"></form>");
			}
		}
		
		if(endPaging == totalPaging){
			out.println("[다음]");
		} else {
			out.println("<form action='/project/purchasingpage' method='post' class='page'><input type='hidden' value="+searchInput+" name='book_name'><input type='hidden' value="+sort+" name='sort'><input type='hidden' value="+ (endPaging+1) +" name='pageNum'><input type='submit' value='[다음]'></form>");
		}
	%>
    </div>
    <div class="none">
    </div>
    <%@ include file ="footer.jsp" %>
    <a id="up" href="#">
        위로
    </a>
    
</body>
</html>