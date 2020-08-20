<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Live Weather Tracker</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="html.design">
<!-- description -->
<meta name="description" content="Weather Widget - Responsive Template">
<link rel="shortcut icon" href="images/favicon.ico">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/all.css">
<!-- Fonts and icons -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700"
	rel="stylesheet">
<!-- Reset CSS -->
<link rel="stylesheet" href="css/reset.css">
<!-- Style CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive  CSS -->
<link rel="stylesheet" href="css/responsive.css">
</head>
<body>

	<div class="weathar-box">

		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<h2 class="title-wb">Live Weather Tracker By Java Talks</h2>
			</div>
		</div>
		<div class="row">
		<div class="col-lg-4 col-4 col-md-4 col-sm-4 "></div>
			<div class="col-lg-4 col-4 col-md-4 col-sm-4 ">
				<form:form modelAttribute="watCmd" cssClass="form-inline">
					<div class="form-group">
						<label for="city" style="color: white;font-size: 200%;font-weight: bold;">City :&nbsp;</label>
						<div>
							<form:input path="city" cssClass="form-control" id="city" />
						</div>
					<button type="submit" class="btn btn-default">Get Report</button>
					</div>
				</form:form>
			</div>
			<div class="col-lg-4 col-4 col-md-4 col-sm-4 ">
		</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-4 col-4 col-md-4 col-sm-4 "></div>
		<div class="col-lg-4 col-4 col-md-4 col-sm-4 ">
			<div align="center">
				<div class="col-widget-3">
					<div class="currentWeather">
						<c:if test="${!empty cmd }">
							<h2>
								${cmd.city} <span> WEATHER</span>
							</h2>
							<div class="row align-items-center">
								<div class="col-lg-6">
									<div class="temp-desc">
										<h5>${cmd.temp}°C</h5>
										<p>${cmd.desc}</p>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="icon-c">
										<img src="images/icon-03.png" alt="" />
									</div>
								</div>
							</div>
						</c:if>
					</div>
					<div class="weatherforecast">
						<ul>
							<li class="day old">
								<div class="dayname">
									<span>Min Tempreture</span>
								</div>
								<div class="sm-day-icon">
									<img src="images/icon-03.png" alt="" />
								</div>
								<div class="temps-day">
									<div class="temp-day">${cmd.temp_min}°C</div>

								</div>
							</li>
							<li class="day old-in">
								<div class="dayname">
									<span>Maximum Tempreture</span>
								</div>
								<div class="sm-day-icon">
									<img src="images/icon-03.png" alt="" />
								</div>
								<div class="temps-day">
									<div class="temp-day">${cmd.temp_max}°C</div>

								</div>
							</li>
							<li class="day old">
								<div class="dayname">
									<span>Humidity</span>
								</div>
								<div class="sm-day-icon">
									<img src="images/icon-04.png" alt="" />
								</div>
								<div class="temps-day">
									<div class="temp-day">${cmd.humidity}%</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-4 col-md-4 col-sm-4 "></div>
	</div>
	<hr>
		<div class="row">
			<div class="col-lg-4 col-4 col-md-4 col-sm-4 "></div>
			<div class="col-lg-4 col-4 col-md-4 col-sm-4 ">
				<a href="https://github.com/nemadroshan/WhetherReportApplication"><h3 style="color: white">Click here for source code</h3></a>
				<div align="center">
					<h6 style="color: white">&copy;JavaTalks</h6>
				</div>
			</div>
			<div class="col-lg-4 col-4 col-md-4 col-sm-4 ">
			
			</div>
		</div>
	<!-- jquery latest version -->
	<script src="js/jquery.min.js"></script>
	<!-- popper.min.js -->
	<script src="js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>