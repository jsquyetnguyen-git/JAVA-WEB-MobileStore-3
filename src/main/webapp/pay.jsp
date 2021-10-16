<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp" />

<section class="page-section" id="product">
	<div class="container">
		<div class="row">
			<div class="col-md-9 border pt-5">
				<div class="container">
					<div class="p-2">
						<table class="table table-bordered">
							<thead class="bg-secondary text-white">
								<tr>
									<th>Products in cart: ${cart.getItems().size()}</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Amount</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty cart.getItems()}">
									<tr>
										<td colspan="4"><img class="w-25" alt=""
											src="${pageContext.request.contextPath}/img/logos/empty_cart.png"></td>
									</tr>
								</c:if>

								<c:forEach var="c" items="${cart.getItems()}">
									<tr>
										<td>
											<p><c:out value="${c.name}" /></p>
										</td>
										<td>($) <c:out value="${c.price}"/></td>
										<td><c:out value="${c.number}"/></td>
										<td>($) <c:out value="${c.price*c.number}"/></td>
									</tr>
								</c:forEach>
								<tr>
									<td colspan="4"><span><strong>Total: </strong></span>($) <c:out value="${cart.getAmount()}"/></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="p-2">
						<form action="${pageContext.request.contextPath}/PayController" name="payForm" onsubmit="return validPayForm()">
							<table class="table table-bordered border-light w-auto">
								<tr>
									<td><strong>Your name</strong></td>
									<td><input class="w-100" name="name" type="text"></input></td>
								</tr>
								<tr>
									<td><strong>Your address</strong></td>
									<td><input class="w-100" name="address" type="text"></input></td>
								</tr>
								<tr>
									<td><strong>Your phone</strong></td>
									<td><input class="w-100" name="phone" type="number"></input></td>
								</tr>
								<tr>
									<td><strong>Discount code (if any)</strong></td>
									<td><input class="w-100" name="code" type="text"></input></td>
								</tr>
							</table>
							<p class="text-success">${done}</p>
							<div class="p-2">
								<button class="btn btn-sm btn-primary" type="submit">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-3 border">
				<div class="sub-banner p-2">
					<jsp:include page="promotion-right.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Footer-->
<jsp:include page="footer.jsp" />
<!--JS-->
<script src="script/scripts.js"></script>
</body>

</html>