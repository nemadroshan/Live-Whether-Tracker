<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Welcome to Whether Report Application</h2>
	<br>
	<br>
	<form:form modelAttribute="watCmd">
 City :: &nbsp;<form:input path="city" />&nbsp;<input type="submit"
			value="Get Report" />
	</form:form>

	<br>
	<br>
	<div>
		<c:if test="${!empty cmd }">
			<table>
				<tr>
					<td>City</td>&nbsp;
					<td>${cmd.city}</td>
				</tr>	
				<tr>
					<td>Temprature</td>
					<td>${cmd.temp}</td>
				</tr>
				
				<tr>
					<td>Min Temp</td>
					<td>${cmd.temp_min}</td>
				</tr>
				
				<tr>
					<td>Max Temp</td>
					<td>${cmd.temp_max}</td>
				</tr>
				
				<tr>
					<td>humadity</td>
					<td>${cmd.humidity}</td>
				</tr>

			</table>
		</c:if>
	</div>
</body>
</html>