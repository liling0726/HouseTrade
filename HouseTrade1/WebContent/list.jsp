<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="james" uri="www.james.com.cn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>房屋列表</title>
<link href="css/list.css" type="text/css" rel="stylesheet" />
<link href="images/icon.png" type="image/x-icon" rel="icon" />
<link type="text/css" href="css/bootstrap.css" rel="stylesheet">
<link type="text/css" href="css/common.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
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
				<li><a href="login.jsp">会员登录</a></li>
				<li><a href="regist.jsp">免费注册</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="wraper">
		<!-- <div class="head"></div> -->
		<!-- <br/> -->
		<div class="cond">
			<james:SearchCondition />
			<div class="ui-search-filter"></div>
		</div>
		<div>
			<ul class="list">
				<c:forEach items="${houseList}" var="house">
					<li style="overflow: hidden;">
						<div class="list-mod1">
							<c:forEach items="${house.houseImages}" var="houseImage"
								varStatus="st">
								<c:if test="${st.index == 0}">
									<a href="http://www.baidu.com" target="_blank"> <img
										width="160px" height="120px" src="upload/${houseImage.name}" />
									</a>
								</c:if>
							</c:forEach>
						</div>
						<div class="list-mod2">
							<div class="info-title">
								<a href="findHouseById?id=${house.id}">${house.title}</a>
							</div>
							<div class="list-word">
								<span class="list-word-col"> <i class="ico-general"></i>
									<a class="adds" href="#">${house.smallArea}</a>
								</span> <span class="list-word-col"> <i class="ico-coordinate"></i>
									<a class="adds" href="#">渝北二手房出售</a> - 照母山幸福广场旁
								</span>
							</div>
							<p class="list-word">
								<span class="js-huxing">
									${house.room}室${house.hall}厅${house.bathroom}卫 </span> <i
									class="cut-line">/</i> <span class="js-huxing">
									${house.housingType} </span> <i class="cut-line">/</i> <span
									class="js-huxing"> ${house.floor}/${house.totalFloor}层 </span>
								<i class="cut-line">/</i> <span class="js-huxing">
									${house.decoration} </span> <i class="cut-line">/</i> <span
									class="js-huxing"> ${house.orientation} </span> <i
									class="cut-line">/</i> <span class="js-huxing">
									${house.publishTime} </span>
							</p>
						</div>
						<div class="list-mod3">
							<p class="list-part list-part-first">
								<em class="sale-price">${house.salePrice}</em> 万
							</p>
							<p class="list-part">
								<span>${house.houseArea}m²</span> <span>(${(house.salePrice*10000)/house.houseArea}元/m²)</span>
							</p>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
		<br /> <br />
		<div align="center">
			<james:SearchPage />
			<%-- <%
					for(int i = 1; i <= 9; i ++) {
				%>
					<button type="button" class="button" ><%=i%>
					</button>
				<%
					}
				%> --%>
			<!-- <button class="button">1</button>
				<button class="button">2</button> -->
		</div>
		<br /> <br />
	</div>
</body>
</html>
