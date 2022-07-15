<%@page import="com.jobportal.model.JobOpening"%>
<%@page import="java.util.List"%>
<%@page import="com.jobportal.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/main.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background: rgb(40, 40, 40)">

	<div class="header_emp">
		<div class="navbar_emp container-fluid">
			<div class="navigation_bar_emp">
				<ul class="row ">
					<%
					User user = (User) session.getAttribute("currentUser");
					%>

					<li style="font-size: 20px">Welcome <%=user.getFname().toUpperCase()%></li>
				</ul>
				<div class="nav_menu_emp">
					<a href="emprhome.jsp" class="btn btn-success">Home</a> <a
						href="postjobempr.jsp" class="btn btn-success">Post another
						Job</a> <a href="logoutUser" class="btn btn-danger">Log Out</a>
				</div>
			</div>
		</div>
	</div>

	<!-- =========== Searched Result  ================== -->

	<h3 class="Searchheading">You have posted the below jobs</h3>
	<%
	List<JobOpening> postedJobs = (List<JobOpening>) session.getAttribute("postedJobs");

	for (JobOpening postedJob : postedJobs) {
	%>
	<form action="applicantsORdelete">
		<div class="container jobdata">
			<div class="row ">
				<div class="col jobtitle">
					<h2>
						<%=postedJob.getSkillsReq()%>
					</h2>
				</div>
			</div>
			<div class="row jobdata">
				<div class="col-md-3 jobdetails">
					<h4>
						Job City is
						<%=postedJob.getJobCity()%>
					</h4>
				</div>
				<div class="col-md-3 jobdetails">
					<h4>
						Work date is
						<%=postedJob.getWorkDate()%>
					</h4>
				</div>
				<div class="col-md-3 jobdetails">
					<h4>
						Recruiter's Contact Number
						<%=postedJob.getMobileNumber()%>
					</h4>
				</div>
				<div class="col-md-3 jobdetails">
					<input type="hidden" name="WorkId"
						value="<%=postedJob.getWorkId()%>"> <input type="submit"
						class="btn btn-success" name="Operation" value="View Applicants" />
				<input type="submit" name="Operation" class="btn btn-danger" value="DELETE">
	</form>

	<!--<a class="btn btn-success" href="#" >EDIT</a> -->
	</div>
	</div>
	</div>

	<%
	}
	%>

</body>
</html>