<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문하기 페이지</title>
</head>
<body>

	<h2>질문하기</h2>
    <form action="#" method="post">
        <label for="question">Your Question:</label>
        <input type="text" id="question" name="question" required/>
        <button type="submit">Submit</button>
    </form>
    <hr/>
    <h3>Previous Questions:</h3>
    <c:forEach var="previousQuestion" items="${previousQuestions}">
        <p>${previousQuestion}</p>
    </c:forEach>


</body>
</html>