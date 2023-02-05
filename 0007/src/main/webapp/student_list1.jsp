<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select hakbun, name, tel, dept_name, register_fee, dept_idx from register_tbl inner join dept_tbl on register_tbl.dept_code=dept_tbl.dept_code");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="text-align:center;">
		<h1>학생 등록금 목록 조회</h1>
		<hr>
			<table border="1">
				<thead>
					<tr>
						<td>학번</td>
						<td>성명</td>
						<td>연락처</td>
						<td>소속학과</td>
						<td>등록금</td>
						<td>전공계열</td>
					</tr>
				</thead>
				<tbody>
					<% while(rs.next()) {%>
					<tr>
						<td><%= rs.getString(1) %></td>
						<td><%= rs.getString(2) %></td>
						<td><%= rs.getString(3) %></td>
						<td><%= rs.getString(4) %></td>
						<td><%= rs.getString(5) %></td>
						<td><%= rs.getString(6) %></td>
					</tr>
					<% } %>
				</tbody>
			</table>
		<hr>
	</div>
	<h3>HRDKOREA Copyright&copy;2022 All right reserved. Human Resources<p>Development Service of Korea</h3>
</body>
</html>