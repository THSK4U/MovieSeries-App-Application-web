<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from hotflix.volkovdesign.com/main/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 03 Jun 2024 10:42:58 GMT -->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
						
							<li class="header__nav-item">
								<a href="signin" class="header__nav-link">Sign in</a>
							</li>
							<li class="header__nav-item">
								<a href="Signup" class="header__nav-link">Sign up</a>
							</li>
						</ul>
						<!-- end header nav -->
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

	<!-- home -->
	<section class="home home--hero">
		<div class="container">
			<div class="row">
				<!-- home title -->
				<div class="col-12">
					<h1 class="home__title"><b>NEW ITEMS</b> OF THIS SEASON</h1>
				</div>
				<!-- end home title -->

				<!-- hero carousel -->
				<div class="col-12">
					<div class="hero splide splide--hero">
						<div class="splide__arrows">
							<button class="splide__arrow splide__arrow--prev" type="button">
								<i class="ti ti-chevron-left"></i>
							</button>
							<button class="splide__arrow splide__arrow--next" type="button">
								<i class="ti ti-chevron-right"></i>
							</button>
						</div>
						
						<div class="splide__track">
							<ul class="splide__list">
								<li class="splide__slide">
									<div class="hero__slide" data-bg="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/hotflix.volkovdesign.com/main/img/bg/slide__bg-1.jpg">
										<div class="hero__content">
											<h2 class="hero__title">Savage Beauty <sub class="green">9.8</sub></h2>
											<p class="hero__text">A brilliant scientist discovers a way to harness the power of the ocean's currents to create a new, renewable energy source. But when her groundbreaking technology falls into the wrong hands, she must race against time to stop it from being used for evil.</p>
											<p class="hero__category">
												<a href="#">Action</a>
												<a href="#">Drama</a>
												<a href="#">Comedy</a>
											</p>
											<div class="hero__actions">
												<a href="details.html" class="hero__btn">
													<span>Watch now</span>
												</a>
											</div>
										</div>
									</div>
								</li>

								<li class="splide__slide">
									<div class="hero__slide" data-bg="amazon.com/images/M/MV5BY2Y1ZWEyNjgtYTc3NC00YmZiLTk4ZGItZDViM2U0Nzk0MWQzXkEyXkFqcGdeQXVyNTkxMDU1Njg@._V1_FMjpg_UX330_.jpg">
										<div class="hero__content">
											<h2 class="hero__title">From the Other Side <sub class="yellow">6.9</sub></h2>
											<p class="hero__text">In a world where magic is outlawed and hunted, a young witch must use her powers to fight back against the corrupt authorities who seek to destroy her kind.</p>
											<p class="hero__category">
												<a href="#">Adventure</a>
												<a href="#">Triler</a>
											</p>
											<div class="hero__actions">
												<a href="details.html" class="hero__btn">
													<span>Watch now</span>
												</a>
											</div>
										</div>
									</div>
								</li>

								<li class="splide__slide">
									<div class="hero__slide" data-bg="amazon.com/images/M/MV5BYjMzZDBiZTYtYWY5Ni00N2ZkLTlhZjgtOTQ1MWVmNGIzNjg5XkEyXkFqcGdeQXVyNDQ5MzEyMTg@._V1_FMjpg_UX342_.jpg">
										<div class="hero__content">
											<h2 class="hero__title">Endless Horizon <sub class="red">6.2</sub></h2>
											<p class="hero__text">When a renowned archaeologist goes missing, his daughter sets out on a perilous journey to the heart of the Amazon rainforest to find him. Along the way, she discovers a hidden city and a dangerous conspiracy that threatens the very balance of power in the world.</p>
											<p class="hero__category">
												<a href="#">Action</a>
												<a href="#">Drama</a>
												<a href="#">Triler</a>
											</p>
											<div class="hero__actions">
												<a href="details.html" class="hero__btn">
													<span>Watch now</span>
												</a>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- hero carousel -->
			</div>
		</div>
	</section>
	<!-- end home -->
	<!-- end home -->

	<!-- section -->
	<section class="section section--border">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2 class="section__title">Select your plan</h2>
				</div>
			</div>

			<div class="row">
				<!-- plan -->
				<div class="col-12 col-md-6 col-lg-4 order-md-2 order-lg-1">
					<div class="plan">
						<h3 class="plan__title">Basic</h3>
						<span class="plan__price">Free</span>
						<ul class="plan__list">
							<li class="plan__item"><i class="ti ti-circle-check"></i> 7 days</li>
							<li class="plan__item"><i class="ti ti-circle-check"></i> 720p Resolution</li>
							<li class="plan__item plan__item--none"><i class="ti ti-circle-minus"></i> Limited Availability</li>
							<li class="plan__item plan__item--none"><i class="ti ti-circle-minus"></i> Desktop Only</li>
							<li class="plan__item plan__item--none"><i class="ti ti-circle-minus"></i> Limited Support</li>
						</ul>
						<a href="signin.html" class="plan__btn">Register</a>
					</div>
				</div>
				<!-- end plan -->

				<!-- plan -->
				<div class="col-12 col-md-12 col-lg-4 order-md-1 order-lg-2">
					<div class="plan plan--orange">
						<h3 class="plan__title">Premium</h3>
						<span class="plan__price">$34.99 <sub>/ month</sub></span>
						<ul class="plan__list">
							<li class="plan__item"><i class="ti ti-circle-check"></i> 1 Month</li>
							<li class="plan__item"><i class="ti ti-circle-check"></i> Full HD</li>
							<li class="plan__item"><i class="ti ti-circle-check"></i> Limited Availability</li>
							<li class="plan__item plan__item--none"><i class="ti ti-circle-minus"></i> TV & Desktop</li>
							<li class="plan__item plan__item--none"><i class="ti ti-circle-minus"></i> 24/7 Support</li>
						</ul>
						<button class="plan__btn" type="button" data-bs-toggle="modal" data-bs-target="#plan-modal">Choose Plan</button>
					</div>
				</div>
				<!-- end plan -->

				<!-- plan -->
				<div class="col-12 col-md-6 col-lg-4 order-md-3">
					<div class="plan plan--red">
						<h3 class="plan__title">Cinematic</h3>
						<span class="plan__price">$49.99 <sub>/ month</sub></span>
						<ul class="plan__list">
							<li class="plan__item"><i class="ti ti-circle-check"></i> 2 Months</li>
							<li class="plan__item"><i class="ti ti-circle-check"></i> Ultra HD</li>
							<li class="plan__item"><i class="ti ti-circle-check"></i> Limited Availability</li>
							<li class="plan__item"><i class="ti ti-circle-check"></i> Any Device</li>
							<li class="plan__item"><i class="ti ti-circle-check"></i> 24/7 Support</li>
						</ul>
						<button class="plan__btn" type="button" data-bs-toggle="modal" data-bs-target="#plan-modal">Choose Plan</button>
					</div>
				</div>
				<!-- end plan -->
			</div>
		</div>
	</section>
	<!-- end section -->

	<!-- footer -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="footer__content">
						<a href="index.html" class="footer__logo">
							<img src="img/logo.svg" alt="">
						</a>

						<span class="footer__copyright">© HOTFLIX, 2024</span>

						<nav class="footer__nav">
							<a href="about.html">About Us</a>
							<a href="contacts.html">Contacts</a>
							<a href="privacy.html">Privacy policy</a>
						</nav>

						<button class="footer__back" type="button">
							<i class="ti ti-arrow-narrow-up"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- end footer -->

	<!-- plan modal -->
	<div class="modal fade" id="plan-modal" tabindex="-1" aria-labelledby="plan-modal" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal__content">
					<button class="modal__close" type="button" data-bs-dismiss="modal" aria-label="Close"><i class="ti ti-x"></i></button>

					<form action="#" class="modal__form">
						<h4 class="modal__title">Select plan</h4>

						<div class="sign__group">
							<label for="fullname" class="sign__label">Name</label>
							<input id="fullname" type="text" name="name" class="sign__input" placeholder="Full name">
						</div>

						<div class="sign__group">
							<label for="email" class="sign__label">Email</label>
							<input id="email" type="text" name="email" class="sign__input" placeholder="example@domain.com">
						</div>

						<div class="sign__group">
							<label class="sign__label" for="value">Choose plan:</label>
							<select class="sign__select" name="value" id="value">
								<option value="35">Premium - $34.99</option>
								<option value="50">Cinematic - $49.99</option>
							</select>

							<span class="sign__text">You can spend money from your account on the renewal of the connected packages, or to order cars on our website.</span>
						</div>

						<div class="sign__group">
							<label class="sign__label">Payment method:</label>

							<ul class="sign__radio">
								<li>
									<input id="type1" type="radio" name="type" checked="">
									<label for="type1">Visa</label>
								</li>
								<li>
									<input id="type2" type="radio" name="type">
									<label for="type2">Mastercard</label>
								</li>
								<li>
									<input id="type3" type="radio" name="type">
									<label for="type3">Paypal</label>
								</li>
							</ul>
						</div>

						<button type="button" class="sign__btn sign__btn--modal">
							<span>Proceed</span>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end plan modal -->

	<!-- JS -->
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

<!-- Mirrored from hotflix.volkovdesign.com/main/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 03 Jun 2024 10:43:10 GMT -->
</html>