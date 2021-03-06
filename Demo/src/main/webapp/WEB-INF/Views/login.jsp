<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="bg-warning">
	<div class="container-wrapper">
		<div class="container">
			<div id="login-box">
			<c:if test="${registrationSuccess !=null}">
                        ${registrationSuccess }
             </c:if>
            <h2><i>Login with Username and Password</i></h2>
					<c:if test="${not empty logout}">
						<div class="error" style="color: #ff0000;">${logout}</div>
					</c:if>
					
	<form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
	<c:if test="${not empty error}">
		<div class="error" style="color: #ff0000;">${error}</div>
	</c:if>
	<div class="form-group">
	<label for="username">UserName: </label>
	<input type="text" id="username" name="j_username" class="form-control"/>
		</div>
	<div class="form-group">
	<label for="password">Password:</label>
	<input type="password" id="password" name="j_password" class="form-control"/>
	</div>
	<input type="submit" value="Submit" class="btn btn-info btn-large"/>
	</form>
	</div>
	</div>
	</div>
<%@ include file="footer.jsp"%>
</body>
</html>

