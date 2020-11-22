<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table,tr,td{
margin: auto;
width : 500px;
border-collapse: collapse;
border: 1px solid black;
text-align: center;
}
</style>
</head>
<body>
	<table>
		<tr> 
		<td>이름</td><td>과목</td><td>직급</td><td>학년</td><td>반</td><td>학생 수</td>
		</tr>
		
		<tr>
		<td><%=request.getAttribute("name")%></td>
		<td><%=request.getAttribute("sucode")%></td>
		<td><%=request.getAttribute("level")%></td>
		<td><%=request.getAttribute("grade")%></td>
		<td><%=request.getAttribute("class")%></td>
		<td><%=request.getAttribute("stcount")%></td>
		</tr>

	</table>

	
	
	
</body>
</html>