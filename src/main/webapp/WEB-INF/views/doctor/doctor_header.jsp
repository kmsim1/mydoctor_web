<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!-- Main Header -->
<header class="main-header">

	<!-- Logo -->
	<a href="<c:url value="/"/>" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>MY</b>D</span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>MY</b>Doctor</span>
	</a>

	<!-- Header Navbar -->
	<nav class="navbar navbar-static-top" role="navigation">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>
		<!-- Navbar Right Menu -->
		<div class="navbar-custom-menu">

			<c:url value="/logout" var="logoutUrl" />
			<form action="${logoutUrl}" method="post" id="logoutForm">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>

			<script>
				function formSubmit() {
					document.getElementById("logoutForm").submit();
				}
			</script>
			<ul class="nav navbar-nav">

				<c:if test="${pageContext.request.userPrincipal.name != null }">
					<li><a>Welcome:${pageContext.request.userPrincipal.name}</a></li>
					<li><a href="javascript:formSubmit()">Logout</a></li>
				</c:if>

				<c:if test="${pageContext.request.userPrincipal.name == null}">
					<li><a href="<c:url value="/login"/> ">Login</a></li>
				</c:if>

				<!-- Control Sidebar Toggle Button -->
				<li><a href="#" data-toggle="control-sidebar"><i
						class="fa fa-gears"></i></a></li>
			</ul>
		</div>
	</nav>
</header>




<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
	<!-- Create the tabs -->
	<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
		<li class="active"><a href="#control-sidebar-home-tab"
			data-toggle="tab"><i class="fa fa-home"></i></a></li>
		<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
				class="fa fa-gears"></i></a></li>
	</ul>
	<!-- Tab panes -->
	<div class="tab-content">
		<!-- Home tab content -->
		<div class="tab-pane active" id="control-sidebar-home-tab">
			<h3 class="control-sidebar-heading">Recent Activity</h3>
			<ul class="control-sidebar-menu">
				<li><a href="javascript:;"> <i
						class="menu-icon fa fa-birthday-cake bg-red"></i>

						<div class="menu-info">
							<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

							<p>Will be 23 on April 24th</p>
						</div>
				</a></li>
			</ul>
			<!-- /.control-sidebar-menu -->

			<h3 class="control-sidebar-heading">Tasks Progress</h3>
			<ul class="control-sidebar-menu">
				<li><a href="javascript:;">
						<h4 class="control-sidebar-subheading">
							Custom Template Design <span class="pull-right-container">
								<span class="label label-danger pull-right">70%</span>
							</span>
						</h4>

						<div class="progress progress-xxs">
							<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
						</div>
				</a></li>
			</ul>
			<!-- /.control-sidebar-menu -->

		</div>
		<!-- /.tab-pane -->
		<!-- Stats tab content -->
		<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
			Content</div>
		<!-- /.tab-pane -->
		<!-- Settings tab content -->
		<div class="tab-pane" id="control-sidebar-settings-tab">
			<form method="post">
				<h3 class="control-sidebar-heading">General Settings</h3>

				<div class="form-group">
					<label class="control-sidebar-subheading"> Report panel
						usage <input type="checkbox" class="pull-right" checked>
					</label>

					<p>Some information about this general settings option</p>
				</div>
				<!-- /.form-group -->
			</form>
		</div>
		<!-- /.tab-pane -->
	</div>
</aside>
<!-- /.control-sidebar -->
<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
<div class="control-sidebar-bg"></div>





<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">

		<!-- Sidebar user panel (optional) -->
		<c:if test="${pageContext.request.userPrincipal.name == null}">
			<div class="user-panel">
				<a class="btn btn-block btn-social btn-facebook" href="#"> <i
					class="fa fa-facebook"></i> Sign in with Facebook
				</a> <a class="btn btn-block btn-social btn-google"> <i
					class="fa fa-google-plus"></i> Sign in with Google
				</a>

			</div>
		</c:if>

		<c:if test="${pageContext.request.userPrincipal.name != null }">
			<div class="user-panel">
				<div class="pull-left image">
					<img
						src="${pageContext.request.contextPath}/resources/dist/img/user2-160x160.jpg"
						class="img-circle" alt="User Image">
				</div>
				<div class="pull-left info">
					<p>${pageContext.request.userPrincipal.name}</p>
					<!-- Status -->
					<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
				</div>
			</div>
		</c:if>



		<!-- Sidebar Menu -->
		<ul class="sidebar-menu">
			<li class="header">MENU</li>
			<!-- Optionally, you can add icons to the links -->
			<li><a href="${pageContext.request.contextPath}"><i class="fa fa-link"></i>
					<span>Dash Board</span></a></li>

			<li class="treeview active"><a href="#"><i
					class="fa fa-link"></i> <span>Data</span> <span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span></a>
				<ul class="treeview-menu">
					<li><a href="${pageContext.request.contextPath}/doctor/heartrate">심박수</a></li>
					<li><a href="${pageContext.request.contextPath}/doctor/bloodPressure">혈압</a></li>
					<li><a href="${pageContext.request.contextPath}/doctor/stepCount">걸음수</a></li>
					<li><a href="${pageContext.request.contextPath}/doctor/bloodSugar">혈당</a></li>
					<li><a href="${pageContext.request.contextPath}/doctor/bloodOxygen">혈중산소농도</a></li>
					<li><a href="${pageContext.request.contextPath}/doctor/weight">체중</a></li>
				</ul></li>

			
		</ul>
		<!-- /.sidebar-menu -->
	</section>
	<!-- /.sidebar -->
</aside>