<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table,tr,td,th{
margin : auto;
text-align: center;
border: 1px solid black; 
border-collapse: collapse;
}
</style>
</head>
<body>
<form action="Fcontroller" method="get">
	<table>
		<tr>
			<th colspan="2">로그인</th>
		</tr>
		<tr>
			<th>ID</th>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<th>PASS</th>
			<td><input type="text" name="pwd"></td>
		</tr>
		<tr> <td colspan="2"> <input type="submit" value="로그인" > </td>  </tr>
	</table>
	</form>
</body>
</html>