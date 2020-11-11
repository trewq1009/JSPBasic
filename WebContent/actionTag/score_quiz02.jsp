<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	/*
		앞에서 넘어온 폼값을 받아서 평균을 구합니다.
		평균이 60이상이면 score_quiz03으로 이동해서 평균과 이름을 출력
		평균이 60이하이면 score_quiz04으로 이동해서 "~님은 불합격 입니다."
		
		조건 : 세션을 사용하지 않는다.
	*/
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
	
	int k = Integer.parseInt(kor);
	int e = Integer.parseInt(eng);
	int m = Integer.parseInt(math);
	
	double avg = (double)(k + e + m) / 3.0;
	
	// 다음화면으로 넘겨줄 값을 저장
	request.setAttribute("name", name);
	request.setAttribute("avg", avg);
	
	if(avg >= 60) {
		request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
	} else {
		request.getRequestDispatcher("score_quiz04.jsp").forward(request, response);
	}
%>
