<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.jobportal.model.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main.css">
<title>job Portal - Post job</title>
<style>
</style>
</head>

<body>
    <div class="header_emp">
        <div class="navbar_emp container-fluid">
            <div class="navigation_bar_emp">
                <ul class="row ">
                    <% User user = (User) session.getAttribute("currentUser");  %>

					<li style="font-size: 20px">Welcome <%= user.getFname().toUpperCase()%></li>
                </ul>
                <div class="nav_menu_emp">
                    <a href="emprhome.jsp" class="btn btn-success">Home</a>
                    <a href="postjobempr.jsp" class="btn btn-success">Post another Job</a>
                   <a href="postedjobs"
						class="btn btn-info">Posted Jobs</a> 
                    <a href="logoutUser" class="btn btn-danger">Log Out</a>
                </div>
            </div>
        </div>
    </div>
<!-- =================================================================== -->

<section id="main_empr_home">
	<div class="container postsuccess ">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<h2>Job deleted Successfully!</h2>
				<p class="lead">You can re-apply from post new job section!</p>
			</div>
		</div>
	</div>
	</section>
</body>

</html>