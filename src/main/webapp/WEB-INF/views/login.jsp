<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>MyDoctor | Log in</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/iCheck/square/blue.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<div class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="../../index2.html"><b>My</b>Doctor</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">Sign in to start your session</p>

			<c:if test="${not empty logout}">
				<div style="color: #0000ff">
					<h3>${logout}</h3>
				</div>
			</c:if>

			<c:if test="${not empty error}">
				<div style="color: #ff0000">
					<h3>${error}</h3>
				</div>
			</c:if>

			<form action="<c:url value="/login" />" method="post">
				<div class="form-group has-feedback">
					<input type="text" class="form-control" placeholder="username"
						name="username"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>

				<div class="form-group has-feedback">
					<input type="password" class="form-control" placeholder="Password"
						name="password"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>

				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label> <input type="checkbox" name="remember-me">
								Remember Me
							</label>
						</div>
					</div>
					<!-- /.col -->
					<!-- Html form을 사용하므로 csrf -->
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					<div class="col-xs-4">
						<button type="submit" name="submit" value="submit"
							class="btn btn-primary btn-block btn-flat">Sign In</button>
					</div>
					<!-- /.col -->
				</div>
			</form>

			<div class="social-auth-links text-center">
				<p>- OR -</p>
				<a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i
					class="fa fa-facebook"></i> Sign in using Facebook</a> <a href="#"
					class="btn btn-block btn-social btn-google btn-flat"><i
					class="fa fa-google-plus"></i> Sign in using Google+</a>
			</div>
			<!-- /.social-auth-links -->

			<a href="#">I forgot my password</a><br> <a href="register.html"
				class="text-center">Register a new membership</a>

		</div>
		<!-- /.login-box-body -->
	</div>
</div>
<!-- /.login-box -->

<!-- jQuery 2.2.3 -->
<script src="resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="resources/plugins/iCheck/icheck.min.js"></script>
<script>
	$(function() {
		$('input').iCheck({
			checkboxClass : 'icheckbox_square-blue',
			radioClass : 'iradio_square-blue',
			increaseArea : '20%' // optional
		});
	});
</script>