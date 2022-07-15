<%@page import="com.jobportal.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--date of birth 
    city 
    district
     mobile 
    state -->

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<title>Job Portal - Update Profile</title>
<style>
body {
	background: rgb(40, 40, 40)
}

.container {
	min-height: 100vh;
	margin-top:120px;
}

.col-md-4 {
	border: 1px solid black;
	margin: auto;
	background: #fff;
	border-radius: 20px;
}

input {
	display: inline-block;
	margin-bottom: 10px
}
</style>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/style.css" />
</head>

<body>
	<div class="header">
		<div class="navbar_emp container-fluid">
			<nav class="navigation_bar_emp">
				<ul class="row ">
					<%
					User user = (User) session.getAttribute("currentUser");
					%>

					<li style="font-size: 20px">Welcome <%=user.getFname().toUpperCase()%></li>
				</ul>
				<div class="nav_menu_emp">
					<a href="emphome.jsp" class="btn btn-success">Home</a> <a
						href="searchjob.jsp" class="btn btn-success">Search job</a> <a
						href="appliedjobs" class="btn btn-info">Applied Jobs</a> <a
						href="logoutUser" class="btn btn-danger">Log Out</a>
				</div>
			</nav>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<form action="updateprofile">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Date Of Birth</label> <input type="date"
								name="dateOfBirth" class="form-control"
								placeholder="dateofbirth">
						</div>
						<div class="form-group col-md-6">
							<label>Mobile Number</label> <input type="number"
								name="mobileNumber" class="form-control"
								placeholder="Mobile Number">
						</div>
					</div>
					<div class="form-group">
						<label>City</label> <input type="text" name="userCity"
							class="form-control" placeholder="1234 Main St">
					</div>
					<div class="form-group">
						<label>District</label> <input type="text" name="userDistrict"
							class="form-control" placeholder="">
					</div>
					<div class="form-row">
						<div class="form-group">
							<label>State</label> <input name="userState" type="text"
								class="form-control">
						</div>
					</div>
					<div>
						<button type="submit" class="mx-auto my1 d-block btn btn-success">Update
							Details</button>

					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>