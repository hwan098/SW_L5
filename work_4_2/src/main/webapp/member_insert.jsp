<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 등록</h1>
	<form action="member_insert_apply.jsp">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="p_id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="p_pw"></td>
			</tr>
			<tr>
				<td>성명</td>
				<td><input type="text" name="c_name"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="c_email"></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><input type="text" name="c_tel"></td>
			</tr>
			<tr>
				<td colspan="2"><button>등록</button></td>
			</tr>
		</table>
	</form>
	<a href="custom01_list.jsp"><button>조회</button></a>
</body>
</html>