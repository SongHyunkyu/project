<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>

<style>
body {
   font-family: 'Cafe24Supermagic-Bold-v1.0';
}

.baguni {
   margin: 3% 7%;
}

.baguni b {
   text-align: center;
   font-size: 25px;
}

.baguni .menu_1 {
   background-color: rgb(218, 241, 225);
   width: 100%;
   height: 40px;
   border-radius: 10px;
}

.baguni .menu_1 .menu_2 {
   display: flex;
   justify-content: space-around;
   width: 100%;
   height: 100%;
   align-items: center;
}

.baguni .menu_3 {
   background-color: rgb(218, 241, 225);
   width: 100%;
   height: 40px;
   border-radius: 10px;
}

.baguni .menu_3 .menu_4 {
   display: flex;
   justify-content: space-around;
   width: 100%;
   height: 100%;
   align-items: center;
}

.baguni .menu_1 .menu_2 div {
   width: 100%;
}

.baguni .goods_1 .goods_2 div {
   width: 100%;
}

.baguni .menu_1 .menu_2 .space {
   flex-grow: 1;
   width: 100%;
}

.baguni .menu_1 .menu_2 .menu_2_1 {
   flex-grow: 1;
   text-align: center;
}

.baguni .menu_1 .menu_2 .menu_2_2 {
   flex-grow: 1;
   text-align: center;
}

.baguni .menu_1 .menu_2 .menu_2_3 {
   flex-grow: 1;
   text-align: center;
}

.baguni .goods {
   width: 100%;
   height: 100%;
   text-align: center;
}

.baguni .goods .goods_2 {
   display: flex;
   justify-content: space-around;
}

.baguni .goods .goods_2 .goods_delete {
   flex-grow: 1;
   margin-top: 63px;
   text-align: center;
   width: 100%;
}

.goods_delete input[type="button"] {
   border: none;
   background-color: rgb(218, 241, 225);
   font-family: 'Cafe24Supermagic-Bold-v1.0';
   font-size: 16px;
   border-radius: 10px;
   width: 65px;
   height: 23px;
   text-align: center;
}

.goods_delete input[type="button"]:hover {
   cursor: pointer;
}

.baguni .goods .goods_2 .goods_name {
   flex-grow: 1;
   margin-top: 65px;
   text-align: center;
   width: 100%;
}

.baguni .goods .goods_2 .goods_price {
   flex-grow: 1;
   margin-top: 65px;
   text-align: center;
   width: 100%;
}

.baguni .goods .goods_2 .goods_quantity {
   display: flex;
   align-items: center;
   justify-content: space-around;
   flex-grow: 1;
   margin-top: -6px;
   text-align: center;
   width: 100%;
}

.baguni .goods .goods_2 .goods_quantity #quantity {
   margin: 0 10px;
}

.baguni .goods .goods_2 .goods_quantity #decrease_1, #decrease_2,
   #decrease_3, #decrease_4, #decrease_5 {
   margin-right: -50px;
   background-color: rgb(218, 241, 225);
   outline: none;
   border: none;
   border-radius: 10px;
   font-family: 'Cafe24Supermagic-Bold-v1.0';
}

.baguni .goods .goods_2 .goods_quantity #decrease_1, #decrease_2,
   #decrease_3, #decrease_4, #decrease_5:hover {
   cursor: pointer;
}

.baguni .goods .goods_2 .goods_quantity #increase_1, #increase_2,
   #increase_3, #increase_4, #increase_5 {
   margin-left: -50px;
   background-color: rgb(218, 241, 225);
   outline: none;
   border: none;
   border-radius: 10px;
   font-family: 'Cafe24Supermagic-Bold-v1.0';
}

.baguni .goods .goods_2 .goods_quantity #increase_1, #increase_2,
   #increase_3, #increase_4, #increase_5:hover {
   cursor: pointer;
}

.baguni .goods .goods_2 .goods_pick {
   flex-grow: 1;
   margin-top: 63px;
   text-align: center;
   width: 100%;
}

.baguni .goods .goods_2 .images {
   flex-grow: 1;
   text-align: center;
   width: 100%;
}

.baguni .goods .goods_2 .images img {
   max-width: 100%;
   max-height: 100%;
}

.baguni .order {
   background-color: white;
   text-align: center;
   width: 100%;
   margin: 0 auto;
}

.baguni .order .order_1 {
   background-color: rgb(218, 241, 225);
   margin: 20px auto;
   border: none;
   width: 300px;
   height: 50px;
   border-radius: 10px;
   font-weight: bold;
   font-size: 25px;
   font-family: 'Cafe24Supermagic-Bold-v1.0';
}

.baguni .order .order_1:hover {
   cursor: pointer;
}

hr {
   margin-top: 10px;
   margin-bottom: 10px;
}
</style>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
    $(document).ready(function() { //로드 완료되면 
        var list_length = "${fn:length(list)}";
		
        $('#buy').html(0); // 최초 buy 값
        $('#final_buy').html(0); // 최초 final_buy 값
        
        $('input[name=check1]').on( 'change', function() { // 체크상태 변경시 
	
                var index = $(this).val(); // index값 가져와서 
                var price = parseInt($('#price_'+index).text()); //그 index 가격 
                var quantity = parseInt($('#quantity_'+index).text()); // 그 index 수량 
                var currentSum = parseInt($('#buy').text()); // 현재 총 구매금액             
                var tmp = price * quantity; // 해당 index 총가격
					// 체크되어있다면
                if ($(this).is(':checked')) {
                	$('#buy').html(currentSum + tmp);
                	$('#final_buy').html(currentSum + tmp+3000);
                } else {
                	var sum = currentSum-tmp;
                	if(sum == 0){
                		$('#buy').html(0);
                		$('#final_buy').html(0);
                	}else{
                		$('#buy').html(sum);
                		$('#final_buy').html(sum+3000);
                	}
                }
          
        });
    });
    
    function deleteCart(index){
    	var cart_number= $('#cart_number_'+index).val(); // $('#cart_number_0')
    	
    	var param={
    		// key			value
    		cart_number : cart_number // java Map과 똑같은 형태 
    	}
    	
    	$.ajax({
			type : 'post',
			url : '/project/deleteCart',
			dataType : 'json',
			data : param,
			success : function(data) { 
				if(data.result=='Y'){
					//$(this).closest('.goods').remove();
					location.reload(true); //새 로 고 침 
				}else{
					alert('실 패');
				}
			},
			error : function() { //error나면 할 행위
			
			}
		});
    }
</script>


</head>

<body>

   <%@ include file="header.jsp"%>

   <div class="baguni">
      <form action="baguniorder">
         <b>장바구니</b>
         <div class="menu_1">
            <div class="menu_2">
               <div class="menu_2_1"></div>
                              <div class="space"></div>
               <div class="menu_2_3">
                  <h4>상품명</h4>
               </div>
               <div class="menu_2_2">
                  <h4>가격</h4>
               </div>
               <div class="menu_2_1">
                  <h4>수량 선택</h4>
               </div>
               <div class="menu_2_1">
                  <h4></h4>
               </div>

            </div>
         </div>
         <div>

	
            <c:forEach var="list" items="${list}" varStatus="st">
               <div class="goods">
                  <hr>

                  <div class="goods_2">
                     <div class="goods_pick" id="pick_1"><!-- 체크박스 -->
                        <input type="checkbox" id="check_${st.index}" name="check1" value="${st.index}">
                     </div>
                     <div class="images"><!-- 이미지 -->
                        <img src="${list.BOOK_IMG}"
                           style="margin-left: -30px; height: 150px;">
<!--                         <img src="https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_4326931%2F43269311618.20231017083220.jpg&type=w216" -->
                     </div>
                     <div class="goods_name"> <!-- 상품이름 -->
                        <h4>${list.BOOK_NAME}</h4>
                     </div>
                     <div class="goods_price">
                        <h4 id="price_${st.index}">${list.BOOK_PRICE}</h4> <!-- 상품 가격 -->
                     </div>
                     <div class="goods_quantity">
<!--                         <button type="button" id="decrease_1">-</button> -->
                        <h4 id="quantity_${st.index}">${list.AMOUNT}</h4>
<!--                         <button type="button" type="button" id="increase_1">+</button> -->
                     </div>
                     <div class="goods_delete"> <!-- 삭제버튼 -->
                        <input type="button" id="del_${st.index}" value="삭제" onclick="deleteCart(${st.index})"> <!-- del_0 del_1 del_2 ... -->  
                     </div>
                    <input type="hidden" id="cart_number_${st.index}" value="${list.CART_NUMBER}">	<!-- cart_nubmer_0 cart_number_1 ... -->
                  </div>
               </div>
            </c:forEach>
            <hr>
         </div>
         <div class="menu_3">
            <div class="menu_4">
               <div class="price">
                  <h4>총 구매 금액</h4>
               </div>
               <div class="price">
                  <h4 id="buy">

                  </h4>
               </div>
               <div class="price">
                  <h4>+</h4>
               </div>
               <div class="price">
                  <h4>(배송비) : 3000원 =</h4>
               </div>
               <div class="price">
                  <h4 id="final_buy">
                  
                  </h4>
               </div>
            </div>
         </div>
         <div class="order">
            <input type="submit" class="order_1" value="주문하기">
         </div>
      </form>
   </div>

   <%@ include file="footer.jsp"%>



</body>
</html>