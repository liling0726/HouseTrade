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
<link type="text/css" href="/HouseTrade/css/register.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<title>免费注册</title>
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
				<li class="active"><a href="#">二手房<span class="sr-only">(current)</span></a></li>
				<li><a href="toPub">信息发布</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="login.jsp"> <c:choose>
							<c:when test="${userName==null }">会员登录</c:when>
							<c:otherwise>用户名：${userName}</c:otherwise>
						</c:choose>
				</a></li>
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
				<span class="logo-tit user-reg">免费注册</span>
			</div>
		</div>
		<div class="main">
		<div class="login-box">
			<form class="form-inline" action="regist">
					<table class="form-group">
						<tr>
							<td><label for="username">用&nbsp;&nbsp;&nbsp;户&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;</label><input
								class="form-control" style="width: 267px; height: 36px"
								type="text" name="userName" id="username" /><span></span></td>
						
						</tr>
						<tr>
							<td><label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;</label><input
								class="form-control"
								style="width: 267px; height: 36px; margin-left: 1px;"
								type="password" name="password" id="password"
								placeholder="请输入密码" /><span></span></td>
							
						</tr>
						<tr>
							<td><label for="password">确&nbsp;认&nbsp;密&nbsp;码&nbsp;</label><input
								class="form-control"
								style="width: 267px; height: 36px; margin-left: 1px;"
								type="password" name="repassword" id="repassword"
								placeholder="请输入确认密码" /><span></span></td>
							
						</tr>
						<tr>
							<td><label for="password">验&nbsp;&nbsp;&nbsp;证&nbsp;&nbsp;&nbsp;码&nbsp;&nbsp;</label><input
								class="form-control"
								style="width: 100px; height: 36px; margin-left: 1px;"
								type="text" name="valCode" id="code"
								placeholder="请输入" /><img id="imgcode" src="validate"
								alt="验证码"> <span>看不清？<a href="javascript:void(0)"
									class="changeOne" onclick="reloadcode();">换一张</a></span> <label id="authcode_succeed"
								class="blank invisible"></label> <label id="authcode_error"
								class="hide"></label></td>
								<td></td>
						</tr>
						<tr>
							
								<td><input class="btn btn-primary btn-block " type="submit" value="注册" /></td>
							
						</tr>
						<tr>
							<td><span>我已经注册，现在就<a href="login.jsp">登录</a></span></td>
						</tr>
					</table>
				</form>
			</div>
				<div class="right">
				<img src="/HouseTrade/images/right.jpg">
			</div>
			<!-- 0 代表注册成功，1代表用户名已存在，-->
			<c:choose>
				<c:when test="${result==null }"></c:when>
				<c:when test="${result==0 }">
					<script type="text/javascript">
						alert("注册成功")
					</script><jsp:forward
						page="login.jsp"></jsp:forward></c:when>
				<c:when test="${result==1 }">
					<script type="text/javascript">
						alert("用户名已存在")
					</script>
				</c:when>
				<c:when test="${result==3 }">
					<script type="text/javascript">
						alert("验证码错误" +result)
					</script>
				</c:when>

			</c:choose>
		</div>
	</div>

</body>
</html>