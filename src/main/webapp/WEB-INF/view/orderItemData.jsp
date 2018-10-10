<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../bootstrap/css/bootstrap-grid.min.css">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<script type="text/javascript"
	src="../bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="../bootstrap/js/jquery-3.2.1.slim.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/popper.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/SearchPageParam.js"></script>
<title>Product Data Page</title>
</head>
<body>
<%@include file="Menu.jsp" %>
	<div class="container">
		<div class="card">
			<div class="card-header bg-info text-white">
				<h1>Welcome To OrderItem Data</h1>
			</div>
			<!-- CARD HEAD END -->
			<div class="card-body">
			
				<table class="table table-hover">
					<tr class="thead-light">
						<th>ID</th>
						<th>QUANTITY</th>
						<th>ORDER BUYER NAME</th>
						<th>PRODUCT NAME</th>
						<th colspan="2">OPERATIONS</th>
					</tr>
					<c:forEach items="${orderItemList}" var="orderItem">
						<tr>
							<td><c:out value="${orderItem.id}" /></td>
							<td><c:out value="${orderItem.quantity}" /></td>
							<td><c:out value="${orderItem.order.buyer.firstName}" /></td>
							<td><c:out value="${orderItem.product.name}" /></td>
							<td><a href="delete?orderItemId=${orderItem.id}" class="btn btn-danger">DELETE</a></td>
							<td><a href="edit?orderItemId=${orderItem.id}" class="btn btn-info">EDIT</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			
			<div>
			<c:if test="${null!=message}">
				<div class="card-footer bg-success text-white">
					<b>${message}</b>
				</div>
				<!--CARD FOOTER END -->
			</c:if>
		</div>
		
			
			<!-- CARD FOOTER END -->
		</div>
		<!-- CARD END -->
	</div>
	<!-- CONTAINER END -->
</body>
</html>