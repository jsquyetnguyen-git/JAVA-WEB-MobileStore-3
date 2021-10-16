<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Header -->
<jsp:include page="header.jsp" />

<section class="page-section" id="product">
	<div class="container">
		<div class="row">
			<div class="col-md-9 border p-2">
				<!-- product info -->
				<div class="container">
					<div class="row p-2">
						<div class="col-md-4 p-2">
							<img class="img-fluid"
								src="${pageContext.request.contextPath}/img/phone/${productDetail.src}">
						</div>
						<div class="col-md-8 p-2">
							<div class="price fs-3 text-danger">
								<h3>PRICE: $<c:out value="${productDetail.price}"/></h3>
							</div>
							<h5 class="pt-2">Description</h5>
							<div class="info text-muted fs-6">
								<c:out value="${display}"/><br/>
								<c:out value="${hdh}"/><br/>
								<c:out value="${ram}"/><br/>
								<c:out value="${camera}"/><br/>
								<div class="mt-3">
									<c:url value = "AddToCartController?phoneId=${productDetail.id}" var="addToCart"></c:url>
									<a href="${addToCart}">
										<button class="btn btn-sm btn-secondary"><i class="fas fa-cart-plus"></i> Add to cart</button>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="container">
					<div class="mt-5 text-center border-top">
						<h5>View more items</h5>
					</div>
					<div class="row text-center p-2">
						<div class="col-lg-3 col-sm-4 mb-4 mb-sm-0">
							<div class="phone-item">
								<a href="InformationProductController?id=5"> <img class="img-fluid phone-img"
									src="${pageContext.request.contextPath}/img/phone/phone2-1.jpg"/>
								</a>
								<div class="mt-2">
									<a href="#!" class="text-decoration-none text-dark">Samsung
										Galaxy Z-Fold</a>
									<div class="product-price text-muted">Online price: $2000</div>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-sm-4">
							<div class="phone-item">
								<a href="InformationProductController?id=6"> <img class="img-fluid phone-img"
									src="${pageContext.request.contextPath}/img/phone/phone2-2.jpg"/>
								</a>
								<div class="mt-2">
									<a href="#!" class="text-decoration-none text-dark">Samsung
										Galaxy Z-Flip 3</a>
									<div class="product-price text-muted">Online price: $1900</div>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-sm-4">
							<div class="phone-item">
								<a href="InformationProductController?id=7"> <img class="img-fluid phone-img"
									src="${pageContext.request.contextPath}/img/phone/phone2-3.jpg"/>
								</a>
								<div class="mt-2">
									<a href="#!" class="text-decoration-none text-dark">Iphone
										11 Red</a>
									<div class="product-price text-muted">Online price: $519</div>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-sm-4">
							<div class="phone-item">
								<a href="InformationProductController?id=8"> <img class="img-fluid phone-img"
									src="${pageContext.request.contextPath}/img/phone/phone2-4.jpg"/>
								</a>
								<div class="mt-2">
									<a href="#!" class="text-decoration-none text-dark">Samsung
										Galaxy Note</a>
									<div class="product-price text-muted">Online price: $819</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- right-column-->
			<jsp:include page="shoppingcart-right.jsp"></jsp:include>
			<jsp:include page="promotion-right.jsp"></jsp:include>
		</div>
	</div>
</section>

<!-- Footer-->
<jsp:include page="footer.jsp" />
<!--JS-->
<script src="${pageContext.request.contextPath}/script/scripts.js"></script>
</body>

</html>