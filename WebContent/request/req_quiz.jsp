<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
		<!-- 
		1. form를 이용해서 post형식으로 이름, 국,영,수 값을 입력받습니다. (ㅌ그에서는 반드시 값을 입력하도록)
		2. req_quiz_result.jsp로 전송
		3. 해당 페이지에서는 평균, 합계를 구하고, 80점이상=고득점, 60이상=중간, 60아래=저득점 출력.
		
		 -->
		 
		 <form action="req_quiz_result.jsp" method="post">
		 	이름:<input type="text" name="name" placeholder="이름을 입력하세요" required><br>
		 	<hr>
		 	<strong>과목 점수 입력</strong><br>
		 	국어:<input type="text" name="kor" required><br>
		 	영어:<input type="text" name="eng" required><br>
		 	수학:<input type="text" name="math" required><br>
		 	
		 	제출:<input type="submit" value="제출"><br>
		 	
		 </form>
	
	
	</body>
</html>