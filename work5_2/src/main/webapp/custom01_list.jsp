<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
<% 
	Class.forName("oracle.jdbc.driver.OracleDriver");

	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
	
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("SELECT * FROM custom_01");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원목록조회</h1>
	<hr>
		<table border="1">
			<thead>
				<tr>
					<td><center>회원아이디</center></td>
					<td><center>회원이름</center></td>
					<td><center>회원이메일</center></td>
					<td><center>회원연락처</center></td>
				</tr>
			</thead>
			<tbody>
				<% while(rs.next()) {%>
				<tr>
					<td><center><%= rs.getString(1) %></center></td>
					<td><center><%= rs.getString(3) %></center></td>
					<td><center><%= rs.getString(4) %></center></td>
					<td><center><%= rs.getString(5) %></center></td>
				</tr>
				<% } %>
			</tbody>
		</table>
	<hr>
	<h3>HRDKOREA Copyright&copy;2015 All tights reserved. Human Resources Development Service of Korea</h3>
</body>
</html>