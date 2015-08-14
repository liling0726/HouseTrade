<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/HouseTrade/images/icon.png" type="image/x-icon" rel="icon" />
<link type="text/css" href="/HouseTrade/css/bootstrap.css"
	rel="stylesheet">
<link type="text/css" href="/HouseTrade/css/common.css" rel="stylesheet">
<link type="text/css" href="/HouseTrade/css/login.css" rel="stylesheet">

<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<title>会员登录</title>
</head>
<body>
 
	<!-- 导航 -->
	<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">二手房交易系统</span> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand active" href="#">二手房交易系统</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="list.jsp">二手房<span class="sr-only">(current)</span></a></li>
				<li><a href="toPub">信息发布</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="login.jsp">会员登录</a></li>
				<li><a href="regist.jsp">免费注册</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="logo-wrap">
			<div class="gj-logo">
				<a href="#" target="_self"> <img height="62" width="155"
					src="/HouseTrade/images/login-logo.png" alt="赶集网 更专业的分类信息网"></img>
				</a>
			</div>
			<div class="logo-title">
				<span class="logo-tit user-login"> 会员登录 </span>
			</div>
		</div>
		<!-- 幻灯片 -->
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="/HouseTrade/images/4.jpg" alt="">
				</div>
				<div class="item">
					<img src="/HouseTrade/images/1.jpg" alt="...">
				</div>
				<div class="item">
					<img src="/HouseTrade/images/2.jpg" alt="...">
				</div>
				<div class="item">
					<img src="/HouseTrade/images/3.jpg" alt="...">
				</div>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<div class="login-box">
			<form class="form-inline" action="login">
				<table class="form-group">
					<tr>
						<td><label for="username">用户名</label><input
							class="form-control" style="width: 267px; height: 36px"
							type="text" name="userName" id="username" placeholder="请输入用户名" /></td>
					</tr>
					<tr>
						<td><label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label><input
							class="form-control"
							style="width: 267px; height: 36px; margin-left: 1px;"
							type="password" name="password" id="password" placeholder="请输入密码" /></td>
					</tr>
					<tr>
						
							<td><input class="btn btn-primary btn-block "  type="submit" value="登录" /></td>
						
					</tr>
					<tr>
						<td>
							<span>还没有账号？<a href="regist.jsp">免费注册</a></span>
						</td>
					</tr>
				</table>
			</form>
			<!-- 0 代表登录成功，1代表用户名不存在，2密码错误-->
			<c:choose>
				<c:when test="${result== null}"></c:when>
				<c:when test="${result==0 }"><script type="text/javascript">alert("登录成功")</script><%response.sendRedirect("/HouseTrade/") ;%>></c:when>
				<c:when test="${result==1 }"><script type="text/javascript">alert("用户名不存在")</script></c:when>
				<c:when test="${result==2 }"><script type="text/javascript">alert("密码错误")</script></c:when>


			</c:choose>
		</div>
	</div>
</body>
</html>