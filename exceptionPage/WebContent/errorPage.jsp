<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 페이지 지시자를 이용해서 error발생시 보여주는 페이지라는 것을 설정 -->
    <%@page isErrorPage = "true" %>
    <!-- 페이지의 status를 정상으로 처리해줘야 500에러가 안난다 -->
    <% response.setStatus(200); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
예외페이지 입니다<br/>
<%
	exception.getMessage();
%>

</body>
</html>