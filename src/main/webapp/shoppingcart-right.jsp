<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<div class="col-md-3 border">
	<div class="shopping-cart">
		<div class="border border-light">
			<h5><span><i class="fas fa-shopping-cart"></i></span><strong>Shopping cart</strong></h5>
		</div>
		<div class="pt-2 pe-2 ps-2">
			<table class="table table-bordered">
				<thead>
					<th class="w-100">Products</th>
					<th>Quantity</th>
				</thead>
				<tbody>
				<c:if test="${empty cart.getItems()}">
							<tr>
								<td colspan="2"><img class="w-100" alt="" src="${pageContext.request.contextPath}/img/logos/empty_cart.png"></td>
							</tr>
				</c:if>
				<c:forEach var="p" items="${cart.getItems()}">
							<tr>
								<td><c:out value="${p.name}"/></td>
								<td><c:out value="${p.number}"/></td>
							</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="pay-card">
			<div class="row text-center">
				<div class="col-4 border">
					<img class="img-fluid"
						src="${pageContext.request.contextPath}/img/logos/visa.png" alt="visa">
				</div>
				<div class="col-4 border">
					<img class="img-fluid"
						src="${pageContext.request.contextPath}/img/logos/mastercard.png" alt="mastercard">
				</div>
				<div class="col-4 border">
					<img class="img-fluid"
						src="${pageContext.request.contextPath}/img/logos/paypal.png" alt="paypal">
				</div>
			</div>
		</div>
		<div class="ps-2">
		<a href="${pageContext.request.contextPath}/pay.jsp"><button class="btn btn-sm btn-secondary">Check out</button></a>
		</div>
	</div>