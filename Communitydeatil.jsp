<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
	Aesthetic by gettemplates.co
	Twitter: http://twitter.com/gettemplateco
	URL: http://gettemplates.co
-->
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>New Folder &mdash; Free Website Template, Free HTML5
	Template by GetTemplates.co</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by GetTemplates.co" />
<meta name="keywords"
	content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
<meta name="author" content="GetTemplates.co" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Themify Icons-->
<link rel="stylesheet" href="css/themify-icons.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">

<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">

<!-- Bootstrap DateTimePicker -->
<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">



<!-- Owl Carousel  -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<!-- Theme style  -->
<link rel="stylesheet" href="css/style.css">

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>

<style>
.heart {
	width: 20px;
	height: 20px;
	background: #ea2027;
	position: relative;
	transform: rotate(45deg);
}

.heart::before, .heart::after {
	content: "";
	width: 20px;
	height: 20px;
	position: absolute;
	border-radius: 50%;
	background: #ea2027;
}

.heart::before {
	left: -50%;
}

.heart::after {
	top: -50%;
}
/* imaged preview */
.filebox .upload-display {
	/* 이미지가 표시될 지역 */
	margin-bottom: 5px;
}

@media ( min-width : 768px) {
	.filebox .upload-display {
		display: inline-block;
		margin-right: 5px;
		margin-bottom: 0;
	}
}

.filebox .upload-thumb-wrap {
	/* 추가될 이미지를 감싸는 요소 */
	display: inline-block;
	width: 54px;
	padding: 2px;
	vertical-align: middle;
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #fff;
}

.filebox .upload-display img {
	/* 추가될 이미지 */
	display: block;
	max-width: 100%;
	width: 100% \9;
	height: auto;
}

.Canclebutton:hover {
	color: black;
}
</style>

<!-- <style>

.filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #fff;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #FBB448;
  cursor: pointer;
  border: 1px solid #FBB448;
  border-radius: .25em;
  -webkit-transition: background-color 0.2s;
  transition: background-color 0.2s;
}

.filebox label:hover {
  background-color: #fcbe61;
}

.filebox label:active {
  background-color: #fcbe61;
}

.filebox input[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}

</style> -->

<body>

	<div class="gtco-loader"></div>

	<div>


		<!-- <div class="page-inner"> -->
		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">

				<div class="row">
					<div class="col-sm-4 col-xs-12">
						<div id="gtco-logo">
							<a href="index.html">New Folder <em>.</em></a>
						</div>
					</div>
					<div class="col-xs-8 text-right menu-1">
						<ul>
							<li class="has-dropdown"><a href="services.html">Contents</a>
								<ul class="dropdown">
									<li><a href="#">VS Game</a></li>
									<li><a href="#">Recommend</a></li>
								</ul></li>
							<li class="has-dropdown"><a href="foods.html">Foods</a>
								<ul class="dropdown">
									<li><a href="#">Korean Foods</a></li>
									<li><a href="#">Western Foods</a></li>
									<li><a href="#">Chinese Foods</a></li>
									<li><a href="#">Asian Foods</a></li>
								</ul></li>
							<!-- <li><a href="foods.html">Foods</a></li> -->
							<li><a href="Event.html">Event</a></li>
							<li><a href="community.html">Community</a></li>
							<li class="btn-cta"><a href="logOutControll"><span>logOut</span></a></li>
						</ul>
					</div>
				</div>

			</div>
		</nav>

		<header id="gtco-header" class="gtco-cover gtco-cover-sm"
			role="banner" style="background-image: url(images/img_bg_3.jpg)">
			<div class="overlay"></div>
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-center">

						<div class="row row-mt-15em">
							<div class="col-md-12 mt-text animate-box"
								data-animate-effect="fadeInUp">
								<!-- <span class="intro-text-small">Hand-crafted by <a href="http://gettemplates.co" target="_blank">GetTemplates.co</a></span> -->
								<h1 class="cursive-font">"Board"</h1>
							</div>

						</div>

					</div>
				</div>
			</div>
		</header>



		<div class="gtco-section">
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-12">
						<div class="col-md-6 animate-box" style="float: left;">
							<h3 style="display: inline-block;">Title : ${view.getTitle() } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							Num : ${view.getNum()}</h3>
							
							<h5>WITER : ${view.getWriter() } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								DATE : ${view.getDate() }</h5>
								<h5>
								<div class="heart"
									style="display: inline-block; text-align: right; padding-right: 20px; "></div>
									추천수
								<!-- 여기에다가 CO_THUMB COUNTING-->
							</h5>
								<div class="row form-group"
									style="width: 500px; height: 450px; border: 2px solid rgb(221, 218, 218); border-radius: 20px;">
									<div class="col-md-12">
									
										<!-- <label class="sr-only" for="message">Conversation</label>
										<textarea style="resize: none" name="message" id="message" cols="30" rows="16"
                      class="form-control" placeholder="CO_COMMENT AND CO_FILE FILE 규격"></textarea> -->
										<!-- CO_FILE 과 CO_COMMENT 출력 하기. -->
										${view.getContent() } <br /> ${view.getFile() }
										
									</div>
									
								</div>
								
								<br>

								<!-- 게시판 돌아가기 버튼 -->
								<div class="form-group" style="float: left;">
									<a onclick="history.back(-1)"><input type="button"
										value="Back" class="btn btn-primary"></a>
								</div>
								<!-- 좋아요 버튼 -->
								<div class="form-group"  style="float: left;">
									<a href="?Num=${view.getNum()}" ><input type="button"
										value="LIKE IT" class="btn btn-primary"></a>
								</div>
								<!-- 싫어요 버튼 -->
								<div class="form-group">
									<a href="?Num=${view.getNum()}" ><input type="button"
										value="DON'T LIKE IT" class="btn btn-primary"></a>
								</div>
								<c:if test="${id eq view.getWriterId() or level eq '3'}">
								<!-- 수정하기 버튼 -->
								<div class="form-group" style="float: left;">
								<a href="communityMod?Num=${view.getNum()}" ><input type="button"
										value="Modify" class="btn btn-primary"></a>
								</div>
								<!-- 삭제하기 버튼. -->
								<div class="form-group">
								<a href="communityDel?Num=${view.getNum()}" ><input type="button"
										value="Delete" class="btn btn-primary"></a>
								</div>
								</c:if>
<!-- 	<button onclick="location.href='boardWrite.jsp'">게시글 작성</button>
	<button onclick="location.href='main.jsp'" id="bot">메인으로</button> -->




						</div>

						<div>
							<div class="animate-box" style="float: right;";>
								<!-- 리플 데이터값 가져오기 -->
								<h3>REPLY</h3>
								<h4>REPLY PAGE NUM</h4>
								<div class="row form-group"
									style="width: 500px; height: 100px; border: 2px solid rgb(221, 218, 218); border-radius: 20px;">

								</div>
								<div class="row form-group"
									style="width: 500px; height: 100px; border: 2px solid rgb(221, 218, 218); border-radius: 20px;">

								</div>
								<div class="row form-group"
									style="width: 500px; height: 100px; border: 2px solid rgb(221, 218, 218); border-radius: 20px;">

								</div>
								<div class="row form-group"
									style="width: 500px; height: 100px; border: 2px solid rgb(221, 218, 218); border-radius: 20px;">

								</div>
								<div class="row form-group"
									style="width: 500px; height: 100px; border: 2px solid rgb(221, 218, 218); border-radius: 20px;">

								</div>
							</div>
						</div>
						<br>


					</div>
				</div>
			</div>
		</div>


	</div>

	<footer id="gtco-footer" role="contentinfo"
		style="background-image: url(images/img_bg_1.jpg)"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row row-pb-md">




				<div class="col-md-12 text-center">
					<div class="gtco-widget">
						<h3>Get In Touch</h3>
						<ul class="gtco-quick-contact">
							<li><a href="#"><i class="icon-phone"></i> 010.3740.6894</a></li>
							<li><a href="#"><i class="icon-mail2"></i> New Folder.co</a></li>
							<li><a href="#"><i class="icon-chat"></i> Kakao</a></li>
						</ul>
					</div>
					<div class="gtco-widget">
						<h3>Get Social</h3>
						<ul class="gtco-social-icons">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-12 text-center copyright">
					Prod by <i class="fa fa-love"></i><a
						href="http://127.0.0.1:5500/index.html">New Folder</a>
				</div>

			</div>



		</div>
	</footer>
	<!-- </div> -->

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>

	<script src="js/moment.min.js"></script>
	<script src="js/bootstrap-datetimepicker.min.js"></script>


	<!-- Main -->
	<script src="js/main.js"></script>
	<script>
    var imgTarget = $('.preview-image .upload-hidden');
    imgTarget.on('change', function () {
      var parent = $(this).parent();
      parent.children('.upload-display').remove(); if (window.FileReader) {
        //image 파일만 
        if (!$(this)[0].files[0].type.match(/image\//)) return;
        var reader = new FileReader();
        reader.onload = function (e) {
          var src = e.target.result;
          parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="' + src + '" class="upload-thumb"></div></div>');
        }
        reader.readAsDataURL($(this)[0].files[0]);
      } else {
        $(this)[0].select();
        $(this)[0].blur();
        var imgSrc = document.selection.createRange().text;
        parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');
        var img = $(this).siblings('.upload-display').find('img');
        img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\"" + imgSrc + "\")";
      }
    });


  </script>

</body>

</html>