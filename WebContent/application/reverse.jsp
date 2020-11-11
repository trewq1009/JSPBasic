<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String yn = (String)session.getAttribute("authYN");
    
    	if(yn == null) {
    		%>
    			<script>
					alert("경로가 올바르지 않습니다.")
					location.href = "auth.jsp";
				</script>
    		<%
    	}
    	
    	// application객체의 예약정보를 얻습니다.
    	List<String> list = new ArrayList<>();
    	if(application.getAttribute("list") != null) {
    		list = (List<String>)application.getAttribute("list");
    	}
    	
    	
    
    %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
	
		<!-- 
			태그를 선택하지 못하도록 처리하는 옵션 disabled
			checkbox, radio를 선택하게 하는 옵션 checked
			select태그에서 미리 선택하게 하는 옵션은 selected
			input태그에 반드시 값을 입력하세요 required
			input태그를 읽기속성 readonly
		 -->				

		<div align="center">
		
			<h2>영화 좌석 예약</h2>
			<h4>예약할 좌석을 체크하세요</h4>
			
			<form action="resrve_ok.jsp" method="post">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<%for(char c = 'A'; c <= 'Z'; c++) { %>
					<small><%=c %></small>&nbsp;&nbsp;
				<%} %>
				<br/>
				
				<%for(int i=1; i <= 6; i++) { %>
					<%=i %>
					<%for(char c = 'A'; c <= 'Z'; c++) { %>
						<input type="checkbox" name="seat" value="<%=c%>-<%=i%>" <%=list.contains(c+"-"+i) ? "disabled" : ""%>>
					<%} %>
					
					<%= i == 3 ? "<br/>" : "" %>
					
					<br/>
				<%} %>
				
				<input type="submit" value="예약">
				<input type="button" value="처음으로" onclick="location.href='auth.jsp'">
				
			</form>
		
		</div>
		
	</body>
</html>


















