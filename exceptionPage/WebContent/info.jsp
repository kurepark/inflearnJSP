<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 페이지 지시자를 이용해서 error발생시 보여줄 화면을 설정 -->
    <%-- <%@page errorPage = "errorPage.jsp" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- 500에러를 발생시킨다 -->
<%-- 	<%
		int i = 40/0;
	%>
 --%>
 
 <!-- 404에러(페이지가 없음)를 발생시킨다 -->
 <a href="error03.jsp">go error03.jsp</a>
</body>
</html>