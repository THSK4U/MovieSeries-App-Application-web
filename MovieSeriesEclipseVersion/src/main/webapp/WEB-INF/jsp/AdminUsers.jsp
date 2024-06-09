<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.firstexample.model.Moderateur" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.firstexample.dao.ModerateurDao" %>
    
    
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from hotflix.volkovdesign.com/admin/users.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Jun 2024 14:15:57 GMT -->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- CSS -->
	<link rel="stylesheet" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/admin/admdd/hotflix.volkovdesign.com/admin/css/slimselect.css">
	<link rel="stylesheet" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/admin/admdd/hotflix.volkovdesign.com/admin/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/admin/admdd/hotflix.volkovdesign.com/admin/css/admin.css">

	<!-- Icon font -->
	<link rel="stylesheet" href="webfont/tabler-icons.min.css">

	<!-- Favicons -->
	<link rel="icon" type="image/png" href="icon/favicon-32x32.png" sizes="32x32">
	<link rel="apple-touch-icon" href="icon/favicon-32x32.png">

	<meta name="description" content="Online Movies, TV Shows & Cinema HTML Template">
	<meta name="keywords" content="">
	<meta name="author" content="Dmitry Volkov">
	<title>HotFlix – Online Movies, TV Shows & Cinema HTML Template</title>
</head>

<body>
	<!-- header -->
	<header class="header">
		<div class="header__content">
			<!-- header logo -->
			<a href="index.html" class="header__logo">
				<img src="img/logo.svg" alt="">
			</a>
			<!-- end header logo -->

			<!-- header menu btn -->
			<button class="header__btn" type="button">
				<span></span>
				<span></span>
				<span></span>
			</button>
			<!-- end header menu btn -->
		</div>
	</header>
	<!-- end header -->

	<!-- sidebar -->
	<div class="sidebar">
		<!-- sidebar logo -->
		<a href="index.html" class="sidebar__logo">
			<img src="img/logo.svg" alt="">
		</a>
		<!-- end sidebar logo -->
		
		<!-- sidebar user -->
		<div class="sidebar__user">
			<div class="sidebar__user-img">
				<img src="img/user.svg" alt="">
			</div>

			<div class="sidebar__user-title">
				<span>Admin</span>
			</div>

			<button class="sidebar__user-btn" type="button">
				<i class="ti ti-logout"></i>
			</button>
		</div>
		<!-- end sidebar user -->

		<!-- sidebar nav -->
		<div class="sidebar__nav-wrap">
			<ul class="sidebar__nav">
				<li class="sidebar__nav-item">
					<a href="index.html" class="sidebar__nav-link"><i class="ti ti-layout-grid"></i> <span>Dashboard</span></a>
				</li>

				<li class="sidebar__nav-item">
					<a href="catalog.html" class="sidebar__nav-link"><i class="ti ti-movie"></i> <span>Catalog</span></a>
				</li>

				<li class="sidebar__nav-item">
					<a href="users.html" class="sidebar__nav-link sidebar__nav-link--active"><i class="ti ti-users"></i> <span>Users</span></a>
				</li>

				<li class="sidebar__nav-item">
					<a href="comments.html" class="sidebar__nav-link"><i class="ti ti-message"></i> <span>Comments</span></a>
				</li>

				<li class="sidebar__nav-item">
					<a href="reviews.html" class="sidebar__nav-link"><i class="ti ti-star-half-filled"></i> <span>Reviews</span></a>
				</li>

				<li class="sidebar__nav-item">
					<a href="settings.html" class="sidebar__nav-link"><i class="ti ti-settings"></i> <span>Settings</span></a>
				</li>

				<!-- dropdown -->
				<li class="sidebar__nav-item">
					<a class="sidebar__nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ti ti-files"></i> <span>Pages</span> <i class="ti ti-chevron-down"></i></a>

					<ul class="dropdown-menu sidebar__dropdown-menu">
						<li><a href="add-item.html">Add item</a></li>
						<li><a href="edit-user.html">Edit user</a></li>
						<li><a href="signin.html">Sign In</a></li>
						<li><a href="signup.html">Sign Up</a></li>
						<li><a href="forgot.html">Forgot password</a></li>
						<li><a href="404.html">404 Page</a></li>
					</ul>
				</li>
				<!-- end dropdown -->

				<li class="sidebar__nav-item">
					<a href="https://hotflix.volkovdesign.com/main/index.html" class="sidebar__nav-link"><i class="ti ti-arrow-left"></i> <span>Back to HotFlix</span></a>
				</li>
			</ul>
		</div>
		<!-- end sidebar nav -->

	</div>
	<!-- end sidebar -->

	<!-- main content -->
	<main class="main">
		<div class="container-fluid">
			<div class="row">
				<!-- main title -->
				<div class="col-12">
					<div class="main__title">
						<h2>Users</h2>

						<span class="main__title-stat">7,34</span>

						<div class="main__title-wrap">
							<button type="button" data-bs-toggle="modal" class="main__title-link main__title-link--wrap" data-bs-target="#modal-user">Add user</button>

							<!-- search -->
							<form action="#" class="main__title-form">
								<input type="text" placeholder="Find user..">
								<button type="button">
									<i class="ti ti-search"></i>
								</button>
							</form>
							<!-- end search -->
						</div>
					</div>
				</div>
				<!-- end main title -->
					${Smessage}
				<!-- users -->
				<div class="col-12">
					<div class="catalog catalog--1">
						<table class="catalog__table">
							<thead>
								<tr>
									<th>ID</th>
									<th>BASIC INFO</th>
									<th>USERNAME</th>
									<th>STATUS</th>
									<th>ACTIONS</th>
								</tr>
							</thead>

							<tbody>
							<%
							ModerateurDao moderateurDao = new ModerateurDao();
        List<Moderateur> moderateur = moderateurDao.getAllData();
        for (Moderateur u : moderateur) {
        %>
								<tr>
									<td>
										<div class="catalog__text"><%= u.getId() %></div>
									</td>
									<td>
										<div class="catalog__user">
											<div class="catalog__avatar">
												<img src="img/user.svg" alt="">
											</div>
											<div class="catalog__meta">
												<h3><%= u.getNom() %></h3>
												<span><%= u.getEmail() %></span>
											</div>
										</div>
									</td>
									<td>
										<div class="catalog__text"><%= u.getNom() %></div>
									</td>
									<td>
										<div class="catalog__text catalog__text--green"><%= u.getRole() %></div>
									</td>
									<td>
										<div class="catalog__btns">
											<a href="edit-user.html" class="catalog__btn catalog__btn--edit">
												<i class="ti ti-edit"></i>
											</a>
											 <a href="deleteUser/<%= u.getId() %>" class="catalog__btn catalog__btn--delete">
                   							 <i class="ti ti-trash"></i>
                							</a>
										</div>
									</td>
								</tr>
								 <%
            }
        %>
							</tbody>
						</table>
					</div>
				</div>
				<!-- end users -->
				<!-- paginator -->
			</div>
		</div>
	</main>
	<!-- end main content -->

	<!-- user modal -->
	<div class="modal fade" id="modal-user" tabindex="-1" aria-labelledby="modal-user" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal__content">
					<form action="saveUsers" class="modal__form">
						<h4 class="modal__title">Add User</h4>

						<div class="row">
						<div class="col-12">
								<div class="sign__group">
									<label class="sign__label" for="Name">Name</label>
									<input id="email0" type="text" name="nom" class="sign__input">
								</div>
							</div>
							<div class="col-12">
								<div class="sign__group">
									<label class="sign__label" for="email">Email</label>
									<input id="email0" type="text" name="email" class="sign__input">
								</div>
							</div>

							<div class="col-12">
								<div class="sign__group">
									<label class="sign__label" for="pass">Password</label>
									<input id="pass0" type="password" name="password" class="sign__input">
								</div>
							</div>
							<div class="col-12">
								<div class="sign__group">
									<label class="sign__label" for="rights">Rights</label>
									<select class="sign__select" name="role" id="rights">
										<option value="Moderator">Moderator</option>
										<option value="Admin">Admin</option>
									</select>
								</div>
							</div>

							<div class="col-12 col-lg-6 offset-lg-3">
								<button type="submit" class="sign__btn sign__btn--modal">Add</button>
							</div>	
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end user modal -->

	<!-- JS -->
	<script src="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/admin/admdd/hotflix.volkovdesign.com/admin/js/bootstrap.bundle.min.js"></script>
	<script src="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/admin/admdd/hotflix.volkovdesign.com/admin/js/slimselect.min.js"></script>
	<script src="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/admin/admdd/hotflix.volkovdesign.com/admin/js/smooth-scrollbar.js"></script>
	<script src="https://raw.githack.com/THSK4U/MovieSeries-App-Application-web/main/Front-End/admin/admdd/hotflix.volkovdesign.com/admin/js/admin.js"></script>
</body>

<!-- Mirrored from hotflix.volkovdesign.com/admin/users.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Jun 2024 14:15:57 GMT -->
</html>