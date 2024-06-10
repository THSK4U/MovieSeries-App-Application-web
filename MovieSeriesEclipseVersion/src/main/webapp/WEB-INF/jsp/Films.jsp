<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="com.firstexample.model.Film" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.firstexample.dao.FilmDao" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from hotflix.volkovdesign.com/main/catalog.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 03 Jun 2024 10:43:14 GMT -->
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
	<!-- header -->
	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="header__content">
						<!-- header logo -->
						<a href="index.html" class="header__logo">
							<img src="img/logo.svg" alt="">
						</a>
						<!-- end header logo -->

						<!-- header nav -->
						<ul class="header__nav">
					
						</ul>
						<!-- end header nav -->

						<!-- header auth -->
						<div class="header__auth">
							<form action="#" class="header__search">
								<input class="header__search-input" type="text" placeholder="Search...">
								<button class="header__search-button" type="button">
									<i class="ti ti-search"></i>
								</button>
								<button class="header__search-close" type="button">
									<i class="ti ti-x"></i>
								</button>
							</form>

							<button class="header__search-btn" type="button">
								<i class="ti ti-search"></i>
							</button>


							<a href="/MovieSeries" class="header__sign-in">
								<i class="ti ti-login"></i>
								<span>Sign out</span>
							</a>
						</div>
						<!-- end header auth -->

						<!-- header menu btn -->
						<button class="header__btn" type="button">
							<span></span>
							<span></span>
							<span></span>
						</button>
						<!-- end header menu btn -->
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- end header -->
	
	<!-- page title -->
	<section class="section section--first">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section__wrap">
						<!-- section title -->
						<h1 class="section__title section__title--head">Movie Catalog</h1>
						<!-- end section title -->

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end page title -->

	
	<!-- catalog -->
	<div class="section section--catalog">
		<div class="container">
			<div class="row">
				<!-- item -->
			<%
		FilmDao filmdao = new FilmDao();
        List<Film> film = filmdao.getAllData();
        for (Film u : film) {
        %>
				<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
					<div class="item">
						<div class="item__cover">
							<img src="<%= u.getCover() %>" alt="">
							<a href="details/<%= u.getId() %>" class="item__play">
								<i class="ti ti-player-play-filled"></i>
							</a>
							<span class="item__rate item__rate--green"><%= u.getNote() %></span>
							<button class="item__favorite" type="button"><i class="ti ti-bookmark"></i></button>
						</div>
						<div class="item__content">
							<h3 class="item__title"><a href="details/<%= u.getId() %>"><%= u.getTitre() %></a></h3>
							<span class="item__category">
								<a href="#"><%= u.getGenre() %></a>
								<a href="#"><%= u.getDateDeSortie() %></a>
							</span>
						</div>
					</div>
				</div>
				<%
            }
        %>
				<!-- end item -->

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

<!-- Mirrored from hotflix.volkovdesign.com/main/catalog.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 03 Jun 2024 10:43:14 GMT -->
</html>