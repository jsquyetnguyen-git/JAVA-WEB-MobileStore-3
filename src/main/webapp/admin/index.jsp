<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<title>Home</title>
<link rel="icon" type="image/x-icon" href="../img/ico/Qmobile.ico" />
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	crossorigin="anonymous"></script>
<!-- font -->
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

<!-- css+bootstrap -->
<link href="../css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
	crossorigin="anonymous"></script>
</head>
<body>

	<div class="container-fluid dash">
		<div class="row">
			<div class="col-lg-2 col-md-3 col-sm-3 col-3 left-col">
				<a href="#"> <img class="img-fluid das-logo"
					src="../img/logos/logo.png" alt="">
				</a>

				<div class="text-start das-icon mt-5">
					<i class="text-light fas fa-home"></i> <a
						class="link-light text-decoration-none" href="#">Home</a>
				</div>
				<div class="text-start das-icon">
					<i class="text-light fas fa-cart-arrow-down"></i> <a
						class="link-light text-decoration-none" href="#">Orders</a>
				</div>
				<div class="text-start das-icon">
					<i class="text-light fab fa-product-hunt"></i> <a
						class="link-light text-decoration-none" href="#">Products</a>
				</div>
				<div class="text-start das-icon">
					<i class="text-light fas fa-user-circle"></i> <a
						class="link-light text-decoration-none" href="#">Customers</a>
				</div>
				<div class="text-start das-icon">
					<i class="text-light fas fa-chart-line"></i> <a
						class="link-light text-decoration-none" href="#">Analytics</a>
				</div>
				<div class="text-start das-icon">
					<i class="text-light fas fa-bullhorn"></i> <a
						class="link-light text-decoration-none" href="#">Marketing</a>
				</div>
				<div class="text-start das-icon">
					<i class="text-light fas fa-percent"></i> <a
						class="link-light text-decoration-none" href="#">Discount</a>
				</div>

			</div>

			<div class="col-lg-10 col-md-9 col-sm-9 col-9 right-col">
				<nav class="navbar navbar-light bg-light border">
					<div class="container-fluid">
						<h6>
							Wellcome: ${user}</h6>
						<form action="/PRJ321x_Project_3_FX10152/logout">
							<button type="submit" class="btn btn-sm btn-secondary">Logout</button>
						</form>
					</div>
				</nav>
				<div>
					<img class="w-100" src="../img/banner/Picture1.jpg" alt="">
				</div>
			</div>
		</div>
	</div>

	<footer>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-6 text-lg-start">Copyright &copy; Qmobile 2021
				</div>
				<div class="col-6 text-lg-end">Nguyen Van Quyet - FX10152</div>
			</div>
		</div>
	</footer>
</body>
</html>