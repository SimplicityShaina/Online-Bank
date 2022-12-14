<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
	<head>
	<title>CREATE NEW ACCOUNT FORM</title>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<style type="text/css" >
		.error{color:Red;}
		url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
  background: #76b852; /* fallback for old browsers */
  background: -webkit-linear-gradient(right, #76b852, #8DC26F);
  background: -moz-linear-gradient(right, #76b852, #8DC26F);
  background: -o-linear-gradient(right, #76b852, #8DC26F);
  background: linear-gradient(to left, #76b852, #8DC26F);
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}
	</style>
	
	</head>
	<body> 
	<br>Welcome Account<br>
	<!-- <br>Your Username:  ${user.username}<br>
	<br>Your Password:  ${user.password}<br> -->
	
	<!--<a href="/login?logout"> Logout</a>  -->
	
	<form:form action="saveaccount" method="post" modelAttribute="account">
	<table>
	
	<!-- Insert Username and Password here -->
	 <tr>
		<td >UserName: <form:input path="username"/>
			<form:errors path="username" cssClass="error"/></td>
	</tr>
	<tr>
		<td >Password: <form:input path="password"/></td>
		<td><form:errors path="password" cssClass="error"/></td>
	</tr>
	 
	
	<tr><td> Account Number <form:input path="accno"/> </td>
	<td><form:errors path="accno" cssClass="error"/> </td></tr>

	<tr><td> Account Type <form:input path="accType"/> </td>
	<td><form:errors path="accType"/> 
	
	<select name="accType">
	<option>Saving Account</option>
	<option>Current Account</option>
	<option>IRA Account</option>
	</select>
	</td></tr>

	<tr><td> Account Holder Name <form:input path="accholdername"/> </td>
	<td><form:errors path="accholdername" cssClass="error" /> </td></tr>
	

	<%Date currentDate=new Date();
		SimpleDateFormat simple=new SimpleDateFormat("dd/MM/yyyy");
		%>
	<tr><td> Account OpenDate <form:input   path="opendate" value="<%=simple.format(currentDate)%>" disabled="true"/> </td>
	<td><form:errors path="opendate" cssClass="error" /> </td></tr>
	
	<tr><td> Account Balance <form:input path="accBalance"/> </td>
	<td><form:errors path="accBalance" cssClass="error"/> </td></tr>
	
		<tr><td> Mobile <form:input path="mobile" /> </td>
	<td><form:errors path="mobile" cssClass="error" /> </td></tr>


	
	<tr><td colspan=2><input type="submit" value="save"> </td></tr>
	
		<tr><td >
				<a href="/set-myaccount" class="btn">Back</a></td>
				</tr>
	</table>
	<form:errors path="*" cssClass="error"></form:errors>
	</form:form >
	
	
	</body>


</html>
