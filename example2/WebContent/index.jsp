<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Landing Page - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="css/landing-page.min.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" href="#">Ajax-Example</a>
    </div>
  </nav>

  <!-- Masthead -->
  <header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
       
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
         <form action="SignControll" method="post" name="formN">
              <div class="col-12 col-md-9 mb-2 mb-md-0" style="float: left; z-index: 100;">
                <input type="text" onchange="CheckId()" id="id" name="id" class="form-control form-control-lg" placeholder="Enter your Id" style="margin-bottom: 20px">
 	              </div> 
 	               <div style="width: 2000px; text-align: left;"> <span id="confirmId" style="height: 45px; line-height: 45px"></span></div>
 	               <div class="col-12 col-md-9 mb-2 mb-md-0">
                <input type="password"  id="pass" name="pass"  class="form-control form-control-lg" placeholder="Enter your Passward" required >
                </div>
                 <span id="confirmPw" style="margin-right: 150px"></span>
                <br>
                 <div class="col-12 col-md-9 mb-2 mb-md-0">
                 <input type="password"  id="pass2" onkeyup="CheckPw()" id="Checkpass" class="form-control form-control-lg" placeholder="One more your Passward">
              </div>
               <span id="result" style="margin-right: 150px"></span>
              <br>
              <div class="col-12 col-md-9 mb-2 mb-md-0"> 
              <input type="text" id="name" name="name" class="form-control form-control-lg" placeholder="Enter your Name" style="margin-bottom: 20px" required>
              </div>
               <div class="col-12 col-md-9 mb-2 mb-md-0"> 
              <input type="email" id="email" name="email" class="form-control form-control-lg" placeholder="Enter your Email" style="margin-bottom: 20px" required>
              </div>
               <div class="col-12 col-md-3">
               <input type="button"  onclick="gosubmit()" class="btn btn-block btn-lg btn-primary" style="width: 445px" value="Sign in">
              </div>
              </form>
        </div>
      </div>
    </div>
  </header>
<script type="text/javascript">
var pass = document.getElementById("pass");
var idCheck = false;
var pwd = false;
var pwdCheck = false;
pass.addEventListener('keyup',()=>{
	CheckPw();
	pwConfirm();
})
function CheckId() {
	
	var userid = document.getElementById("id").value; 
		$.ajax({
			type : "GET" ,
			url : "CheckId" ,				
			data : { "userId" : userid } ,		/* ajaxCheck?userId=aaa */
			dataType : "text" ,
			
			success : function(result){
				console.log("result : " + result);
				if(result=="null"){
					if (userid!="") {
						idCheck=true;
						confirmId.style.color = "#0000ff";
						confirmId.innerHTML = userid + "는 사용 가능한 아이디입니다.";
					}else {
						idCheck=false;
						confirmId.style.color = "#ff0000";
						confirmId.innerHTML = "아이디를 입력해주세요.";
					}
					
				} else {
					idCheck=false;
					confirmId.style.color = "#ff0000";
					confirmId.innerHTML = userid + "는 사용중인 아이디입니다.";
				}
			},	// 성공시
			error : function() {
				alert('ajaxCheck()함수 통신 실패!')
			}			// 실패시
		});
	
}
function pwConfirm(){
	var userPw = document.getElementById("pass").value;
	var confirmPw = document.getElementById("confirmPw");
	
	var num = userPw.search(/[0-9]/g);
	var eng = userPw.search(/[a-z]/ig);
	var spe = userPw.search(/[`~!@@#$%^&*|₩₩₩'₩';:₩/?]/gi);
	
	if(userPw.search(/\s/)!=-1){
		pwd=false;
		confirmPw.style.color = "#ff0000";
		confirmPw.innerHTML = "비밀번호는 공백 없이 입력해주세요!";
	} else if (userPw.length < 8 || userPw.length > 20){
		pwd=false;
		confirmPw.style.color = "#ff0000";
		confirmPw.innerHTML = "8자리 ~ 20자리 이내로 입력해주세요!";
	} else if( num < 0 || eng < 0 || spe < 0 ){
		pwd=false;
		confirmPw.style.color = "#ff0000";
		confirmPw.innerHTML = "영문, 숫자, 특수문자를 혼합하여 입력해주세요!";
	} else {
		pwd=true;
		confirmPw.style.color = "#0000ff";
		confirmPw.innerHTML = "적절한 비밀번호 입니다!";
	}
}
function CheckPw() {
	var userPw = document.getElementById("pass").value;
	var userPw2 = document.getElementById("pass2").value;
	var result = document.getElementById("result");
	if (userPw==userPw2) {
		if (userPw!="") {
			pwdCheck=true;
			result.style.color = "blue";
			result.innerHTML = "비밀번호가 일치합니다";
		}else {
			pwdCheck=false;
			result.style.color = "red";
			result.innerHTML = "비밀번호를 입력해주세요.";
		}
	}else {
		pwdCheck=false;
		result.style.color = "red";
		result.innerHTML = "비밀번호가 일치하지 않습니다.";
	}
}
function gosubmit() {
	if (idCheck==true) {
		if (pwd==true) {
			if (pwdCheck==true) {
				formN.submit();
			}else {
				alert("비밀번호가 일치하지 않습니다.");
				pass2.focus();
			}
		}else {
			alert("비밀번호 양식을 맞춰주세요.");
			pass.focus();
		}
	}else {
		alert("아이디 중복체크를 해주세요.");
		id.focus();
	}
	
}
</script>
  <!-- Icons Grid -->

  <!-- Footer -->
  <footer class="footer bg-light">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
          <ul class="list-inline mb-2">
            <li class="list-inline-item">
              <a href="#">About</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="#">Contact</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
          </ul>
          <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2020. All Rights Reserved.</p>
        </div>
        <div class="col-lg-6 h-100 text-center text-lg-right my-auto">
          <ul class="list-inline mb-0">
            <li class="list-inline-item mr-3">
              <a href="#">
                <i class="fab fa-facebook fa-2x fa-fw"></i>
              </a>
            </li>
            <li class="list-inline-item mr-3">
              <a href="#">
                <i class="fab fa-twitter-square fa-2x fa-fw"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-instagram fa-2x fa-fw"></i>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>

</body>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  

</html>











