<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
	<title><spring:message code="login.title" /></title>
	     <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      <style type="text/css">
      /* Override some defaults */
      html, body {
        background-color: #eee;
      }
      body {
        padding-top: 40px; 
      }
      .container {
        width: 300px;
      }

      /* The white background content wrapper */
      .container > .content {
        background-color: #fff;
        padding: 20px;
        margin: 0 -20px; 
        -webkit-border-radius: 10px 10px 10px 10px;
           -moz-border-radius: 10px 10px 10px 10px;
                border-radius: 10px 10px 10px 10px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.15);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.15);
                box-shadow: 0 1px 2px rgba(0,0,0,.15);
      }

	  .login-form {
		margin-left: 65px;
	  }
	
	  legend {
		margin-right: -50px;
		font-weight: bold;
	  	color: #404040;
	  }

    </style>
  
</head>
<body>
	<div class="container">
	 <div class="content">
	  <div class="row">
	   <div class="login-form">
	   	<form:form commandName="loginCommand">
		<form:errors />
	<p>
		<label class="clearfix "><spring:message code="email" />:<br>
		<form:input path="email" /></br>
		<form:errors path="email"/>
		</label>
	</p>
	<p>
		<label class="clearfix"><spring:message code="password" />:<br>
		<form:password path="password" /></br>
		<form:errors path="password"/>
		</label>
	</p>
	<p>
		<label><spring:message code="rememberEmail" />:
		<form:checkbox path="rememberEmail"/> 
		</label>
	</p>
	<input type="button" class="btn primary" onclick="window.location.href='/sp4-chap13/register/step1'" value="회원가입">
	<input type="submit" class="btn primary" value=" 로그인">
	</form:form>
	   
	   </div>
	  </div>
	 </div>
	</div>
</body>
</html>