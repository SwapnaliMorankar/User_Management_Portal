<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Dashboard</title>
<link rel="icon" type="image/png" href="https://img.lovepik.com/element/45004/4989.png_860.png">
<style>
	body {
		font-family: 'Arial', sans-serif;
		margin: 0;
		padding: 0;
		background: linear-gradient(135deg, #e0eafc, #cfdef3);
		color: #333;
	}
	
	header {
		background-color: #4A90E2;
		color: white;
		padding: 10px 0;
		text-align: center;
	}
	
	nav {
		margin: 20px 0;
	}
	
	nav a {
		color: white;
		text-decoration: none;
		padding: 10px 20px;
		border-radius: 5px;
		margin: 0 10px;
		transition: background 0.3s;
	}
	
	nav a:hover {
		background-color: #357ABD;
	}
	
	.container {
		max-width: 800px;
		margin: auto;
		padding: 20px;
		background-color: white;
		border-radius: 10px;
		box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
	}
	
	h1 {
		text-align: center;
		color: #4A90E2;
	}
	
	.content {
		text-align: center;
		margin: 20px 0;
	}
	
	.card {
		background-color: #f9f9f9;
		border-radius: 10px;
		padding: 20px;
		margin: 10px 0;
		box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
	}
	
	footer {
		text-align: center;
		padding: 20px 0;
		background-color: #4A90E2;
		color: white;
		position: relative;
		bottom: 0;
		width: 100%;
	}
</style>
</head>
<body>

	<header>
		<h1>User Dashboard</h1>
	</header>

	<nav>
		<a href="#profile">Profile</a> <a href="#settings">Settings</a> <a
			href="#logout">Logout</a>
	</nav>

	<div class="container">
		<div class="content">
			<h2>Welcome to your Dashboard!</h2>
			<p>Here you can manage your account, view your activities, and
				access all the features available to you.</p>
		</div>

		<div class="card">
			<h3>Your Activities</h3>
			<p>Check your recent activities and updates here.</p>
		</div>


</body>
</html>
