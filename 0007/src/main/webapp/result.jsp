<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="swl5.*"%>
<%
	UserInfo user = new UserInfo("한국인", "02", "2022-02-06");
	ProfessorInfo pf = new ProfessorInfo();
	String code = request.getParameter("code");
	
	pf.setCode(code);
	pf.find();
%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(pf.getName() == "등록되지 않은 교수명"){
			out.println("<script>alert('등록되지않은 교수번호!!');</script>");
		}
	%>
	<h1>교수번호 조회 결과</h1>
	<hr>
		<table border="1">
			<tr>
				<td colspan="2">교수명 조회결과</td>
			</tr>
			<tr>
				<td>교수번호</td>
				<td><%= pf.getCode() %></td>
			</tr>
			<tr>
				<td>교수명</td>
				<td><%= pf.getName() %></td>
			</tr>
			<tr>
				<td>조회일자</td>
				<td><%= pf.getDate() %></td>
			</tr>
		</table>
	<hr>
	<div>
		- 작성자: <%= user.getName() %> 비번: <%= user.getPw() %> 작성일: <%= user.getDate() %>
	</div>
</body>
</html>