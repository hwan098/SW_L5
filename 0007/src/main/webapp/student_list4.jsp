<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
	Statement stmt = conn.createStatement();
	String sql = "select to_char(case when dept_idx='1' then '인문사회' when dept_idx='2' then '공학' when dept_idx='3' then '바이오' end),";
	sql  = sql + "to_char(sum(case when dept_idx='1' then 2000000 when dept_idx='2' then 2000000*1.2 when dept_idx='3' then 2000000*1.1 end), 'L999,999,999')";
	sql  = sql + "from register_tbl group by dept_idx order by dept_idx asc";
	
	ResultSet rs = stmt.executeQuery(sql);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="text-align:center;">
		<h1>학생 등록금 목록 계열별 합계 조회</h1>
		<hr>
			<table border="1">
				<thead>
					<tr>
						<td>계열명</td>
						<td>등록금합계</td>
					</tr>
				</thead>
				<tbody>
					<% while(rs.next()) {%>
					<tr>
						<td><%= rs.getString(1) %></td>
						<td><%= rs.getString(2) %></td>
					</tr>
					<% } %>
				</tbody>
			</table>
		<hr>
	</div>
	<h3>HRDKOREA Copyright&copy;2022 All right reserved. Human Resources<p>Development Service of Korea</h3>
</body>
</html>