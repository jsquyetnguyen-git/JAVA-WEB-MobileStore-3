<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

	<!-- Header -->
	<jsp:include page="header.jsp" />
	<!-- Ad-->
	<section class="page-section">
		<div class="container ad ps-0 pe-0">
			<a href="#!"><img style="max-width: 100%;"
				src="${pageContext.request.contextPath}/img/HomepageBanner.png" alt="adbanner"></a>
		</div>
	</section>

	<!-- Product Grid-->
	<section class="page-section" id="product">
		<div class="container">
			<div class="row">
				<!-- left-column-->
				<div class="col-md-9 text-center border">
					<div class="text-center border border-light">
						<h5><strong>Most-viewed items</strong></h5>
					</div>
					<div class="row">
						<!-- Load phone from DAO-->
						<c:forEach items="${phonelist}" var="p" >
							<div class="col-lg-3 col-sm-4 mb-4">
								<div class="phone-item">
									<a href="InformationProductController?id=${p.id}" class="text-decoration-none">
										<img class="img-fluid phone-img"
										src="${pageContext.request.contextPath}/img/phone/${p.src}"
										alt="${p.description}" />
										<p class="text-dark mt-3 mb-0">${p.name}</p>
										<div class="product-price text-muted">Online price: $${p.price}</div>
									</a>
								</div>
							</div>
						</c:forEach>
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