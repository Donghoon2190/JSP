<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
a{
text-decoration: none;
}
li{
font-size: 30px;
}

</style>
</head>
<body>
<h1><a href="#">Ajax Practice</a></h1>
	<nav>
		<ol id="list">
			
		</ol>
	</nav>
	
	<div id="here">
	</div>
	<div id="end">
	감사합니다!
	</div>

</body>
<script type="text/javascript">
function getjsp(jspname) {
	let jspnames = jspname+".jsp";
	fetch(jspnames).then((response)=>{
		response.text().then((text)=>{
			document.querySelector('#here').innerHTML=text
		})
	})
}
if (location.hash) {
	getjsp(location.hash.substr(2))
}else {
	getjsp('index')
}

/* <a href="#!Java.jsp" onclick="getjsp('Java.jsp')"><li> JAVA </li></a> */
fetch('list.jsp').then((response)=>{
	response.text().then((text)=>{
		let index = text.split(',');
		let ArrList = "";
		for(let i of index){
			console.log(i)
			ArrList += '<a href=\"#!'+i+'\" onclick=\"getjsp(\''+i+'\')\"><li> '+i+' </li></a>'
		}
		document.querySelector('#list').innerHTML=ArrList
	})
})
</script>
</html>


















