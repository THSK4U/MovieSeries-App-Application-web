<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from hotflix.volkovdesign.com/main/signin.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 03 Jun 2024 10:43:19 GMT -->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- CSS -->
	<link rel="stylesheet" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/css/splide.min.css">
	<link rel="stylesheet" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/css/slimselect.css">
	<link rel="stylesheet" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/css/plyr.css">
	<link rel="stylesheet" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/css/photoswipe.css">
	<link rel="stylesheet" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/css/default-skin.css">
	<link rel="stylesheet" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/css/main.css">

	<!-- Icon font -->
	<link rel="stylesheet" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/webfont/tabler-icons.min.css">

	<!-- Favicons -->
	<link rel="icon" type="image/png" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/icon/favicon-32x32.png" sizes="32x32">
	<link rel="apple-touch-icon" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/icon/favicon-32x32.png">

	<meta name="description" content="Online Movies, TV Shows & Cinema HTML Template">
	<meta name="keywords" content="">
	<meta name="author" content="Dmitry Volkov">
	<title>HotFlix – Online Movies, TV Shows & Cinema HTML Template</title>
</head>

<body>
	<div class="sign section--bg" data-bg="img/bg/section__bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="sign__content">
						<!-- authorization form -->
						<form action="login" class="sign__form">
							<a href="index.html" class="sign__logo">
								<img src="img/logo.svg" alt="">
							</a>
       						 <p style="color:red">${Fmessage}</p>
       						 <p style="color:green">${Smessage}</p>
							<div class="sign__group">
								<input type="text" class="sign__input" name="email" placeholder="Email">
							</div>

							<div class="sign__group">
								<input type="password" class="sign__input" name="password" placeholder="Password">
							</div>

							<div class="sign__group sign__group--checkbox">
								<input id="remember" name="remember" type="checkbox" checked="checked">
								<label for="remember">Remember Me</label>
							</div>

							<button class="sign__btn" type="submit">Sign in</button>

							<span class="sign__delimiter">or</span>


							<span class="sign__text">Don't have an account? <a href="Signup">Sign up!</a></span>

							<span class="sign__text"><a href="forgot.html">Forgot password?</a></span>
						</form>
						<!-- end authorization form -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- JS -->
	<script src="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/js/bootstrap.bundle.min.js"></script>
	<script src="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/js/main.js"></script>
	<script src="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/js/slimselect.min.js"></script>
	<script src="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/js/smooth-scrollbar.js"></script>
	<script src="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/js/plyr.min.js"></script>
	<script src="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/js/photoswipe.min.js"></script>
	<script src="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/js/photoswipe-ui-default.min.js"></script>
	<script src="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/js/main.js"></script>
</body>

</html>