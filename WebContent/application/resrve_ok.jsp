<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 1. 좌석 정보를 받습니다.
    	String[] seats = request.getParameterValues("seat");
    	
    	// 2. 좌석 정보를 저장할 List생성
    	List<String> list = new ArrayList<>();
    	
    	// 3. application에서 좌석정보가 존재하면 2번리스트에 저장.
    	if(application.getAttribute("list") != null) {
    		list = (List<String>)application.getAttribute("list");
    	}
    	
    	// 4. 좌석 정보를 비교해서 중복이 없을때 하나씩 저장해놓을 사본 리스트 생성
    	List<String> temp = new ArrayList<>();
    	
    	// 4. 좌석 정보와 2번의 리스트를 비교해서, 중복된 좌석이 아니라면, 사본 리스트에 좌석 정보를 추가합니다.
    	for(String s : seats) { 
    		if(list.contains(s)) {	// 포함된 경우 
    			break;	// 탈출
    		} else {
    			temp.add(s);
    		}
    	}
    	
    	// 5. 사본 리스트와 좌석정보가 길이가 같다면 중복이 없으므로, 2번의 리스트에 통째로 사본리스트를 추가
    	if(temp.size() == seats.length) { // 중복이 없는 경우
    		list.addAll(temp);	// 예약좌석이 들어있는 temp를 원본리스트에 추가
    	}
    	
    	// 6. application에 같은 이름으로 저장
    	application.setAttribute("list", list);
    	
    	// 7. 화면에 예약 성공실패의 결과를 출력해 주세요.
    	
    	
    %>
    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
		<div>
			<h2>예약 결과</h2>
			예약한 좌석:
			<%for(String s : seats) {%>
				[<%=s %>]
			<%} %>
			
			<b><%=temp.size() == seats.length ? "예약성공" : "예약실패" %></b>
			<button type="button" onclick="location.href = 'reverse.jsp'">다시 예약하기</button>
			
		</div>
		
		
	</body>
</html>
















