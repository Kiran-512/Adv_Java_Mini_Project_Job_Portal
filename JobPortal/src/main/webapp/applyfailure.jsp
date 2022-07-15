<!DOCTYPE html>
<%@page import="com.jobportal.model.User"%>
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
                    <a href="emphome.jsp" class="btn btn-success">Home</a>
                    <a href="searchjob.jsp" class="btn btn-secondary">Search another Job</a>
                    <a href="" class="btn btn-info">Applied Job</a>
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
				<h2>You have already applied to this Job!</h2>
				<p class="lead">You will notified once somebody apply's!</p>
			</div>
		</div>
	</div>
	</section>
</body>

</html>