<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<title>QUYET MOBILE</title>
<link rel="icon" type="image/x-icon" href="./img/ico/Qmobile.ico" />
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	crossorigin="anonymous"></script>
<!-- font -->
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

<!-- css+bootstrap -->
<link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/home"> <img
				style="width: 8rem;" src="${pageContext.request.contextPath}/img/logos/logo.png" alt="logo">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars ms-1"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#product">Products</a></li>
					<li class="nav-item"><a class="nav-link" href="#contact">About
							us</a></li>
				</ul>
				<!-- search -->
				<form action="${pageContext.request.contextPath}/search">
					<div class="bg-dark rounded rounded-pill">
						<div class="input-group">
							<input name="search" type="search" placeholder="Enter keyword..."
								aria-describedby="button-addon1"
								class="form-control rounded rounded-pill text-muted border-0 bg-dark" value="${cookie.key.value}">
							<div class="input-group-append">
								<button id="button-addon1" type="submit"
									class="btn btn-link text-secondary">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>
				</form>
				<!-- login -->
				<div class="p-1 login">
					<form action="${pageContext.request.contextPath}/login">
						<button type="submit" class="btn rounded rounded-pill btn-dark">Login</button>
					</form>
				</div>

			</div>
		</div>
	</nav>

	<!-- Banner-->
	<header class="banner">
		<div class="container">
			<div class="bannerText">Apple Iphone 13</div>
			<a class="btn btn-primary rounded-pill btn-xl" href="#services">PRE-ORDER NOW</a>
		</div>
	</header>
	
	<!-- About -->
	<section class="page-section" id="about">
		<div class="container">
			<div class="row">
				<div class="col-md-4 d-flex border">
					<span class="fa-lg"> <i class="far fa-check-circle"></i>
					</span>
					<div>
						<h5 class="my-3">Free shipping within 100km.</h5>
						<p class="text-muted">Only 2$ for > 100Km.</p>
					</div>
				</div>
				<div class="col-md-4 d-flex border">
					<span class="fa-lg"> <i class="far fa-check-circle"></i>
					</span>
					<div>
						<h5 class="my-3">Same-day delivery.</h5>
						<p class="text-muted">Order by 3 p.m., get it by 9 p.m.</p>
					</div>

				</div>
				<div class="col-md-4 d-flex border">
					<span class="fa-lg"> <i class="far fa-check-circle"></i>
					</span>
					<div>
						<h5 class="my-3">By with monthly payments.</h5>
						<p class="text-muted">Apply for ShinhanBank, HSBC.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
