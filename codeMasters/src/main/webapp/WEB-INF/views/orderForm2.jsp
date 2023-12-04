<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문결제</title>

<style>
body {
	margin: 0;
	height: auto;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
}

@font-face {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}

#payment {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	cursor: pointer;
}

.icon input[type="button"].btn {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
}

* {
	padding: 0;
	margin: 0;
}

.purchase-history {
	display: flex;
	justify-content: center;
	align-items: center;
}

.history-header {
	background-color: rgb(218, 241, 225);
	height: 100px;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
	margin: 50px 0 20px 0;
	font-size: 15px;
}

.order-history {
	display: flex;
	justify-content: left;
	align-items: center;
}

.order-history {
	font-size: 12px;
	width: 100%;
	margin-left: 50px;
}

.product-info div {
	background-color: rgb(216, 229, 255);
	display: inline-block;
	margin: 20px 100px;
}

.order-table {
	display: flex;
	justify-content: left;
	align-items: center;
}

.product-table {
	border-collapse: collapse;
	width: 90%;
	border-top: 2px solid black;
	border-bottom: 1px solid rgb(12, 5, 5);
	margin: 0 0 30px 0;
	margin-left: 50px;
}

.product-table tbody tr {
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #ccc;
}

.product-table td, .product-table th {
	padding: 10px;
	text-align: center;
}

.product-table th {
	text-align: center;
	font-size: 20px;
}

#product-image {
	text-align: left;
}

.order-amount {
	display: flex;
	justify-content: left;
	align-items: center;
	font-size: 12px;
}

.order-amount {
	margin-left: 50px;
	background-color: rgb(218, 241, 225);
	width: 90%;
	display: flex;
	align-items: center;
}

#price {
	font-size: 20px;
	font-weight: bold;
	text-align: right;
	width: 50%;
}

.order-details {
	width: 90%;
	margin: 0 auto;
	position: relative;
}

.final-summary {
	float: right;
	width: 100%;
	height: auto;
	padding: 10px 0;
	background: rgb(218, 241, 225);
	border: 1px solid #d3d3d3;
	position: sticky;
	font-size: 18px;
	top: 0px;
	margin: 28px 0 0 0;
	border-radius: 10px;
}

.final-summary table td {
	/* border: 1px solid red; */
	padding: 6px 0 6px 10px;
	text-align: left;
}

#btn {
	text-align: center;
}

#agree td {
	font-size: 15px;
}

.final-summary table td {
	line-height: 23px;
}

.customer-info {
	margin-left: 50px;
}

.customer-info div {
	display: flex;
	align-items: center;
	margin-bottom: 10px;
	margin: 20px 0 40px 0;
}

.customer-info input[type="text"], .customer-info input[type="tel"] {
	width: 40%;
	padding: 10px;
	border: 1px solid #bbb;
	border-radius: 5px;
	outline: none;
	font-size: 16px;
}

.customer-info a {
	width: 15%;
	text-align: center;
	margin-right: 100px;
	font-size: 18px;
}

#credit-card, #other-payment {
	margin-top: 100px;
}

.payment-method {
	width: 95%;
	margin-left: 50px;
}

.payment-method div {
	display: flex;
	align-items: center;
	margin: 20px 0;
	padding: 0px 55px 0px 0;
}

.order-confirmation {
	display: flex;
	font-size: 20px;
	font-weight: bold;
	text-align: center;
	margin: 30px 0 0 150px;
	justify-content: center;
	align-items: center;
}

.payment {
	display: flex;
	justify-content: center;
	margin: -10px 0 100px 150px;
}

#payment {
	background-color: rgb(218, 241, 225);
	width: 200px;
	height: 50px;
	font-size: 20px;
	font-weight: bolder;
	text-align: center;
	border: 1px solid #d3d3d3;
	margin: 30px 0;
	border-radius: 30px;
}

.order-container {
	display: flex;
}

.order-details {
	flex: 6;
	margin: 0 0 0 70px;
	width: 90%;
}

.additional-info {
	flex: 1.5;
}

#btnWrap {
	display: flex;
	justify-content: center;
	width: 100%;
	margin: 0 0 0 70px;
	display: flex;
}

#popupBtn {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	width: 250px;
	height: 50px;
	padding: 10px 5px;
	border: 0;
	border: 1px solid #dadada;
	border-radius: 10px;
	cursor: pointer;
}

#modalWrap {
	position: fixed;
	z-index: 1;
	padding-top: 100px;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
	display: none;
}

#modalBody {
	width: 400px;
	height: 150px;
	padding: 30px 30px;
	margin: 0 auto;
	border: 1px solid #777;
	background-color: #fff;
	line-height: 1.6;
}

#closeBtn {
	float: right;
	font-weight: bold;
	color: #777;
	font-size: 25px;
	cursor: pointer;
}

input[type='checkbox'] {
	appearance: none;
	width: 17px;
	height: 17px;
	background-color: #fff;
	border: 1px solid #000000;
	border-radius: 50%;
	margin: 20px 10px 17px 10px;
}

#chk:checked {
	background-color: #000000;
	border: 2px solid #fff;
}

.order-amount h1 {
	margin: 20px 0 20px 50px;
	border-radius: 10px;
}

.customer-info h2 {
	border-bottom: 1px solid black;
	width: 94%;
	padding-bottom: 20px;
}

.payment-method h2 {
	width: 100%;
	padding-bottom: 20px;
	border-bottom: 1px solid black
}

.payment-options a, .payment-options2 a {
	width: 85px;
	text-align: right;
	font-weight: bold;
}

.final-summary div {
	text-align: center;
	line-height: 40px;
}

.test {
	display: none;
}

.customer-info input[type="text"], .customer-info input[type="tel"] {
	border-radius: 10px;
}

.customer-info input[type="text"]:focus, .customer-info input[type="tel"]:focus
	{
	border-color: rgb(70, 160, 97);
	outline: none;
}

input::placeholder {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
}

v, #order_1 {
	color: rgb(221, 64, 58);
}
</style>

</head>
<body>

	<%@ include file="header.jsp"%>

	<div class="purchase-history">
		<div class="history-header">
			<h1>주문/결제</h1>
		</div>
	</div>
	<div class="order-container">
		<div class="order-details">
			<div class="order-history">
				<h1>주문 내역</h1>
			</div>
			<div class="order-table">

				<table class="product-table">
					<thead>
						<tr>
							<th></th>
							<th>상품명</th>
							<th>가격</th>
							<th>수량</th>
							<th>주문일</th>
						</tr>
					</thead>
					<tbody id="contents">
					</tbody>
				</table>
			</div>

			<div class="order-amount">
				<div>
					<!-- <h1>주문금액</h1> -->
				</div>
				<div id="price">
					<!-- 금액 -->
				</div>
			</div>



			<div class="customer-info">
				<div>
					<h2>수취인 정보 입력</h2>
				</div>

				<form action="/project/order_d" id="pay" method="POST" id="form">
					<input type="hidden" id="orderTotalField" name="total">
					<input type="hidden" name="currentDate" id="currentDate">
						<c:forEach begin="1" end="${amount}" varStatus="loop">
							<input type="hidden" name="book_number" id="book_number"
								value="${list[0].book_number}">
					</c:forEach>
					<input type="hidden" name="productName" value="${items[i].name}">

					<div>
						<a>이름</a> <input id="name" type="text" placeholder="내용을 입력해주세요"
							name="purchase_name" required>
					</div>
					<div>
						<a>주소</a> <input id="address" type="text" placeholder="내용을 입력해주세요"
							name="address" required>
					</div>
					<div>
						<a>상세주소</a> <input id="address_2" name="address_detail"
							type="text" placeholder="내용을 입력해주세요" required>
					</div>
					<div>
						<a>전화번호</a> <input id="tel" type="text"
							placeholder="010 1234 5678" maxlength="11" name="purchase_phone" required
							oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
					</div>
			</div>

			<div class="payment-method">
				<div>
					<h2>결제방법</h2>
				</div>

				<div class="payment-options">
					<div>
						<a>일반결제</a>
					</div>
					<div class="payment-option">
						<input type="radio" id="creditCard" name="payment"
							value="신용카드" required> <label for="creditCard">신용카드</label>
					</div>
					<div class="payment-option">
						<input type="radio" id="bankTransfer" name="payment"
							value="실시간 계좌이체" required> <label for="bankTransfer">실시간
							계좌이체</label>
					</div>
					<div class="payment-option">
						<input type="radio" id="onlineBanking" name="payment"
							value="무통장 입금" required> <label for="onlineBanking">무통장
							입금</label>
					</div>
				</div>

				<div class="payment-options2">
					<div>
						<a>간편결제</a>
					</div>
					<div class="payment-option">
						<input type="radio" id="kakaopay" name="payment"
							value="카카오페이" required> <label for="kakaopay">카카오페이</label>
					</div>
					<div class="payment-option">
						<input type="radio" id="tosspay" name="payment" value="토스페이"
							required> <label for="tosspay">토스페이</label>
					</div>
				</div>
			</div>

			<table class="test">
				<tr>
					<td>주문금액</td>
					<td class="order" id="order_5"></td>

					<td>배송비</td>
					<td class="order" id="order_6"></td>

					<td>결제금액</td>
					<td class="order" id="order_4"></td>
				</tr>
			</table>

			<div class="order-confirmation">
				<div>
					<input type="checkbox" id="chk">
				</div>
				<div>주문 내용을 확인하였으며, 결제에 동의합니다.</div>
			</div>

			<div>
				<div id="btnWrap">
					<button type="button" id="popupBtn">
						<strong>개인정보 수집 및 이용 동의</strong>
					</button>
				</div>

				<div id="modalWrap">
					<div id="modalBody">
						<span id="closeBtn">&times;</span>
						<p>
							고객님께서 구매하신 상품 및 서비스의 원활한 제공을 위하여<br> 최소한의 범위 내에서 개인정보를 수집 및
							이용합니다.<br> 고객님은 개인정보 수집 및 이용 동의에 거부하실 수 있습니다.<br> 단,
							거부하실 경우 상품 구매가 불가합니다.
						</p>
						<p>
							주문할 상품의 상품명, 가격, 배송정보 등을 최종 확인하였으며,<br> 구매에 동의하십니까? (전자상거래법
							제 8조 2항)
						</p>
					</div>
				</div>
			</div>

			<div class="payment">

				<div>
					<input type="submit" value="결제하기" id="payment">
				</div>
			</div>
			</form>
		</div>

		<div class="additional-info">
			<div class="final-summary">
				<div>
					<div>
						<v>결제금액</v>
					</div>
					<div id="order_1">
						<v></v>
					</div>
				</div>
				<div>
					<div>주문금액</div>
					<div id="order_2"></div>
				</div>
				<div>
					<div>배송비</div>
					<div id="order_3"></div>
				</div>
			</div>
		</div>

	</div>

	<%@ include file="footer.jsp"%>

</body>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">

window.addEventListener('load', function () {
	
    // 스티키 창
    let order_1 = document.querySelector("#order_1")
    let order_2 = document.querySelector("#order_2")
    let order_3 = document.querySelector("#order_3")

function getCurrentDate() {
    var today = new Date();

    // 날짜를 yyyy-mm-dd 형식으로 반환
    var yyyy = today.getFullYear();
    var mm = String(today.getMonth() + 1).padStart(2, '0');
    var dd = String(today.getDate()).padStart(2, '0');

    return yyyy + '-' + mm + '-' + dd;
}

// 현재 날짜 출력
console.log(getCurrentDate());


    
    
    let num = 0
    


        let html = '';    

            html += '  <tr>';
            html += '      <td id="product-image">';
            html += `         <img src="${list[0].book_img.replace("\\", "/")}" style="width: 80px; height: 120px;"></td>`;
            html += `      <td>${list[0].book_name}</td>`;
            html += '      <td>' + ${list[0].book_price} + '</td>';
            html += '      <td>' + ${amount} + '</td>';
            html += '      <td>' + getCurrentDate() + '</td>';
            html += '  </tr>';
			
           num = ${list[0].book_price} * ${amount} 
        document.querySelector("#contents").innerHTML = html;
        
        let currentDate = getCurrentDate()
        document.querySelector("#currentDate").value = currentDate
    

    order_2.innerHTML = num
    order_3.innerHTML = 3000 // 택배비
    order_1.innerHTML = parseInt(order_2.innerHTML) + parseInt(order_3.innerHTML)

    order_5.innerHTML = num
    order_6.innerHTML = 3000 // 택배비
    order_4.innerHTML = parseInt(order_2.innerHTML) + parseInt(order_3.innerHTML)

    // 영어와 숫자만 입력받음
    let pattern1 = /^[A-Za-z0-9+]+$/
    // 한글 단어만 입력받음
    let pattern2 = /^[가-힣]+$/
    // 숫자만 입력받음
    let pattern3 = /^[0-9]+$/

    // 이름
    let name = document.querySelector("#name")
    let result_1 = false

    name.onblur = function () {
        if (name.value.trim() == "") {
            result_1 = false
        } else {
            result_1 = true
        }
    }

    // 주소, 상세주소
    document.querySelector("#address").addEventListener("click", function () { //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function (data) { //선택시 입력값 세팅
                let address = document.querySelector("#address").value = data.address; // 주소 넣기
                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
            }
        }).open();
    });

    let address_2 = document.querySelector("#address_2")
    let result_2 = false

    address_2.onblur = function () {
        if (address.value.trim() === "" || address_2.value.trim() === "") {
            result_2 = false
        } else {
            result_2 = true
        }
    }
    // 전화번호
    let tel = document.querySelector("#tel")
    let result_3 = false

    tel.onblur = function () {
        if (tel.value.length != 11 && tel.value.length > 0) {
            result_3 = false;
        } else {
            if (!pattern3.test(tel.value)) {
                result_3 = false
            } else {
                result_3 = true
            }
        }
    }
    // 결제방법 
    let payment = document.querySelector("#payment")
    let paymentOptions = document.querySelectorAll("input[name='payment']");
    let result_4 = false

    payment.addEventListener("mousedown", function(event){
        payment.style.backgroundColor = 'rgba(174, 223, 189, 0.988)'
        })

        payment.addEventListener("mouseup", function(event){
            payment.style.backgroundColor = 'rgb(218, 241, 225)'
        })

        payment.addEventListener("mouseout", function(event){
            payment.style.backgroundColor = 'rgb(218, 241, 225)'
        })

    for (let i = 0; i < paymentOptions.length; i++) {
        paymentOptions[i].addEventListener("click", function () {
            result_4 = this.checked;
            console.log("test", result_4)
        });
    }

    // 개인정보 수집 및 이용 동의 페이지
    let btn = document.querySelector('#popupBtn')
    let modal = document.querySelector('#modalWrap')
    let closeBtn = document.querySelector('#closeBtn')

    btn.onclick = function () {
        modal.style.display = 'block'
    }
    closeBtn.onclick = function () {
        modal.style.display = 'none'
    }
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none"
        }
    }

    // 숫자 포맷 함수(, 붙이기)
    function formatNumber(num) {
        return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }

    // 총 주문금액을 가져와 포맷하여 출력
    let orderTotal1 = document.querySelector("#order_1")
    let totalOrderAmount = parseInt(orderTotal1.innerHTML)
    orderTotal1.innerHTML = formatNumber(totalOrderAmount) + "원"

    // 주문금액을 가져와 포맷하여 출력
    let orderTotal2 = document.querySelector("#order_2")
    let orderAmount = parseInt(orderTotal2.innerHTML)
    orderTotal2.innerHTML = formatNumber(orderAmount) + "원"

    // 배송비를 가져와 포맷하여 출력
    let orderTotal3 = document.querySelector("#order_3")
    let deliveryFee = parseInt(orderTotal3.innerHTML)
    orderTotal3.innerHTML = formatNumber(deliveryFee) + "원"

    // 주문 테이블의 가격 부분을 포맷하여 출력
    let productTable = document.querySelector(".product-table")
    let priceCells = productTable.querySelectorAll("tbody tr td:nth-child(3)")

    priceCells.forEach(function (cell) {
        let price = parseInt(cell.innerHTML)
        cell.innerHTML = formatNumber(price)
    })
    
    let orderTotalField = document.querySelector("#orderTotalField");
    orderTotalField.value = totalOrderAmount;

    // 결제 버튼 클릭
    let chk = document.querySelector("#chk")

    payment.addEventListener("click", function () {
        if (!chk.checked) {
            alert("동의하기에 체크 하셔야 합니다")
            event.preventDefault();
        }
        else if (result_1 === false) {
            alert("이름을 입력해주세요")
            event.preventDefault();
        }
        else if (result_2 === false) {
            alert("주소 혹은 상세주소를 입력해주세요")
            event.preventDefault();
        }
        else if (result_3 === false) {
            alert("전화번호는 -를 제외한 11자리만 입력해주세요")
            event.preventDefault();
        }
        else if (result_4 === false) {
            alert("결제방법을 선택해주세요")
            event.preventDefault();
        }
        else {
            let final = document.querySelector("input[type='radio']:checked").value

            alert(final + " 결제화면")
        }
    })
});
 

</script>

</html>