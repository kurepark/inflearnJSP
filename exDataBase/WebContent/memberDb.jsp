<%@ page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%-- 객체 초기화 --%>
   <%!
		/* 선언부 */
   		Connection connection;
   		Statement statement;
   		ResultSet resultSet;
   		
   		String driver = "oracle.jdbc.driver.OracleDriver";
   		String url = "jdbc:oracle:thin:@localhost:1521:xe";
   		String uid = "scott";
   		String upw = "tiger";
   		String query = "select * from member";
   %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	/* 실제 DB접속 */
	try{
		Class.forName(driver);
		System.out.println("드라이버로딩 성공");
		connection = DriverManager.getConnection(url, uid, upw);
		statement = connection.createStatement();
		resultSet = statement.executeQuery(query);
		
		while(resultSet.next()) {
			String id = resultSet.getString("id");
			String pw = resultSet.getString("pw");
			String name = resultSet.getString("name");
			String phone = resultSet.getString("phone");
			
			out.println("아이디:"+id +  ", 비밀번호:"+pw+", 이름 : "+name+",전화번호 : "+ phone+"<br/>");
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally { // 이상이 있건 없건 finally는 무조건 실행. 
		try{//생성한 걸 역으로 close시켜줌, db와의 연결 종료
			if(resultSet != null) resultSet.close();
			if(statement != null) statement.close();
			if(connection != null) connection.close();
		} catch (Exception e2){
			e2.printStackTrace();
		}
	}
	%>


</body>
</html>