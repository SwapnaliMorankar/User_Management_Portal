<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Admin Dashboard</title>
<link rel="icon" type="image/png" href="https://img.lovepik.com/element/45004/4989.png_860.png">

<style>
	 body {
            height: 100vh;
            margin: 0;
            background-color:#008B8B;
            color: white;
        }
	.list-users{
		width:70%;
		margin-left:15%;
		border:2px solid white;
		margin-top:40px;
		padding:30px;
		background-color:white;
		color:black;
		border-radius:10px;
	}
	.table{
		border:1px solid black;
		margin-top:15px;
	}
	.container{
		margin-top:40px;
		display:flex;
		justify-content:space-evenly;
	}

</style>

</head>
<body>

	<div class="list-users">
		<h3 class="text-center">User Details</h3>
		<table class="table table-dark">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Gender</th>
					<th scope="col">City</th>
					<th scope="col">Address</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="us">
					<tr>
						<th scope="row">${us.ID}</th>
						<td>${us.name }</td>
						<td>${us.email }</td>
						<td>${us.gender }</td>
						<td>${us.city }</td>
						<td>${us.address }</td>
						<td>
							<a href="deleteuser/${us.ID }">
							<i class="fas fa-trash text-danger"></i>
							</a>
							<a href="updateuser/${us.ID }">
							<i class="fas fa-pen-nib"></i>
							</a>  
							</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="container">
			<a href="adduser" class="btn btn-warning">Create New User</a>
		</div>

	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>