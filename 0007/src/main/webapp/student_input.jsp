<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>학생 등록 화면</h1>
	<form action="student_input_ok.jsp">
		<table border="1">
			<tr>
				<td>학번</td>
				<td><input type="text" name="hakbun"></td>
			</tr>
			<tr>
				<td>성명</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td>구분</td>
				<td><input type="text" name="gubun"></td>
			</tr>
			<tr>
				<td>학과코드</td>
				<td><input type="text" name="dept_code"></td>
			</tr>
			<tr>
				<td>등록금</td>
				<td><input type="text" name="register_fee"></td>
			</tr>
			<tr>
				<td>전공계열</td>
				<td><input type="text" name="dept_idx"></td>
			</tr>
			<tr>
				<td colspan="2"><button>등록</button></td>
			</tr>
		</table>
	</form>
	<a href="student_list1.jsp">학생 등록금 목록 조회1</a>
	<p>
	<a href="student_list2.jsp">학생 등록금 목록 조회2</a>
	<p>
	<a href="student_list3.jsp">학생 등록금 목록 조회3</a>
	<p>
	<a href="student_list4.jsp">학생 등록금 목록 계열별 합계 조회</a>
</body>
</html>