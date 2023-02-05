<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
	PreparedStatement stmt = conn.prepareStatement("insert into register_tbl values(?, ?, ?, ?, ?, ?, ?)");
	
	stmt.setString(1, request.getParameter("hakbun"));
	stmt.setString(2, request.getParameter("name"));
	stmt.setString(3, request.getParameter("tel"));
	stmt.setString(4, request.getParameter("gubun"));
	stmt.setString(5, request.getParameter("dept_code"));
	stmt.setString(6, request.getParameter("register_fee"));
	stmt.setString(7, request.getParameter("dept_idx"));
	
	stmt.execute();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	등록완료.
	<a href="student_input.jsp">뒤로 가기</a>
</body>
</html>