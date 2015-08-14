<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>房产发帖页</title>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link href="/HouseTrade/images/icon.png" type="image/x-icon" rel="icon" />
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"></link>
<link type="text/css" href="/HouseTrade/css/common.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/pub.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/pub.js"></script>
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
					<li class="active"><a href="list.jsp">二手房<span
							class="sr-only">(current)</span></a></li>
					<li><a href="toPub">信息发布</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.jsp">会员登录</a></li>
					<li><a href="regist.jsp">免费注册</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="wrap">
		<div id="process">
			<ul class="clearfix">
				<li id="chooseBC" class="current">1 选择大类<em></em><i></i></li>
				<li id="chooseSC">2 选择小类<em></em><i></i></li>
				<li id="writeDetails">3 填写详情</li>
			</ul>
		</div>
		<div class="title">选择大类</div>
		<ul id="category">
			<li><a href="#">房产</a></li>
			<li><a href="#">跳蚤市场(二手)</a></li>
			<li><a href="#">车辆买卖</a></li>
			<li><a href="#">宠物</a></li>
			<li><a href="#">票务/优惠打折</a></li>
			<li><a href="#">同城活动</a></li>
			<li><a href="#">同乡/技能交换</a></li>
			<li><a href="#">全职招聘</a></li>
			<li><a href="#">兼职招聘</a></li>
			<li><a href="#">求职简历</a></li>
			<li><a href="#">招聘会</a></li>
			<li><a href="#">本地生活服务</a></li>
			<li><a href="#">本地商务服务</a></li>
			<li><a href="#">教育培训</a></li>
			<li><a title="您需要先登录进入医疗频道发帖" href="#">医疗健康</a></li>
			<li style="width: 230px;"><a href="#">赶集婚恋</a><span>(本地免费婚恋交友平台)</span></li>
		</ul>
		<div style="display: none" id="housing_major"
			class="cat majorCategory">
			<h2>
				<span style="float: left;">选择房产小类</span>
				<div style="clear: both;"></div>
			</h2>
			<ul class="clearfix">
				<li><a href="#">租房</a></li>
				<li><a href="#">日租房/短租房</a></li>
				<li><a href="#">求租房</a></li>
				<li><a href="#">二手房出售</a></li>
				<li><a href="#">新房出售</a></li>
				<li><a href="#">二手房求购</a></li>
				<li><a href="#">商铺</a></li>
				<li><a href="#">写字楼</a></li>
				<li><a href="#">厂房/仓库/土地</a></li>
			</ul>
		</div>
	</div>
	<div style="width: 980px; margin: 10px auto">
		<a target="_blank" href="http://dingdong.ganji.com/computer.html">
			<img width="980" height="80" alt="微信叮咚服务号" title="微信扫一扫，手机上叮咚"
			src="images/0205-pub-banner.png">
		</a>
	</div>
	<ul id="footer">
		<li><a target="_blank" rel="nofollow"
			href="http://www.ganji.com/misc/abouts/index.php?act=about">关于Ganji</a>-
			<a target="_blank" rel="nofollow"
			href="http://www.ganji.com/tuiguang/index/">赶集推广</a>- <a
			target="_blank" rel="nofollow"
			href="http://tuiguang.ganji.com/zhaoshang/agent.htm">渠道合作</a>- <a
			target="_blank" rel="nofollow" href="http://help.ganji.com/">帮助中心</a>-
			<a target="_blank" rel="nofollow"
			href="http://help.ganji.com/html/sjbmy/" class="fc-red">手机号被冒用</a>- <a
			target="_blank" rel="nofollow"
			href="http://www.ganji.com/misc/abouts/link.php?act=link">友情链接</a>- <a
			href="http://www.ganji.com/misc/abouts/index.php?act=job"
			rel="nofollow" target="_blank">招贤纳士</a>- <a
			href="http://mianyang.ganji.com/quxiandaohang/" target="_blank">区县导航</a>-
			<a href="http://mobile.ganji.com/?ca_name=mobile_other_bottom"
			rel="nofollow" target="_blank">手机赶集</a>- <a
			href="http://3g.ganji.com" target="_blank">赶集网触屏版</a></li>
	</ul>
</body>
</html>

