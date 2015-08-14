<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="org.tarena.controller.HouseController,java.sql.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="/HouseTrade/images/icon.png" type="image/x-icon" rel="icon" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" href="css/bootstrap.css" rel="stylesheet">

 <link type="text/css" href="css/metro-icons.css" rel="stylesheet">
<link type="text/css" href="css/houseDetail.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<title>房子详细信息</title>
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
	<div class="container">
		<div class="panel panel-info">
			<div id="houseTitle">${house.title }</div>
			<div id="houseDesciption">
				<div id="houseImage">
					<div id="houseLabel">
						<span class="label label-primary"> 免营业税 </span>&nbsp;<span
							class="label label-success">电梯房</span>&nbsp;<span
							class="label label-info">配套齐全</span>&nbsp;<span
							class="label label-warning">观景房</span>
					</div>
					<div class="ban" id="demo1">
						<div class="ban2" id="ban_pic1">
							<!-- <div class="prev1" id="prev1"><img src="images/index_tab_l.png" width="28" height="51"  alt=""/></div>
		<div class="next1" id="next1"><img src="images/index_tab_r.png" width="28" height="51"  alt=""/></div> -->
							<ul style="clear: both;">
								<c:forEach items="${house.houseImages}" var="currentImage">
									<li><a href="javascript:;"><img
											src="upload/${currentImage.name}" width="600" height="500"
											alt="" /></a></li>

								</c:forEach>

								<!-- <li><a href="javascript:;"><img
										src="images/house2.jpg" width="600" height="500" alt="" /></a></li>
								<li><a href="javascript:;"><img
										src="images/house3.jpg" width="600" height="500" alt="" /></a></li>
								<li><a href="javascript:;"><img
										src="images/house4.jpg" width="600" height="500" alt="" /></a></li>
								<li><a href="javascript:;"><img
										src="images/house5.jpeg" width="600" height="500" alt="" /></a></li> -->
							</ul>
						</div>
						<div class="min_pic">
							<div class="prev_btn1" id="prev_btn1">
								<img src="images/feel3.png" width="9" height="18" alt="" />
							</div>
							<div class="num clearfix" id="ban_num1">
								<ul>
									<c:forEach items="${house.houseImages}" var="currentImage">
										<li><a href="javascript:;"><img
												src="upload/${currentImage.name}" width="100" height="100"
												alt="" /></a></li>

									</c:forEach>
								</ul>
							</div>
							<div class="next_btn1" id="next_btn1">
								<img src="images/feel4.png" width="9" height="18" alt="" />
							</div>
						</div>
					</div>

					<div class="mhc"></div>

					<div class="pop_up" id="demo2">
						<div class="pop_up_xx">
							<img src="images/chacha3.png" width="40" height="40" alt="" />
						</div>
						<div class="pop_up2" id="ban_pic2">
							<div class="prev1" id="prev2">
								<img src="upload/index_tab_l.png" width="28" height="51" alt="" />
							</div>
							<div class="next1" id="next2">
								<img src="images/index_tab_r.png" width="28" height="51" alt="" />
							</div>
							<ul style="clear: both;">
								<c:forEach items="${house.houseImages}" var="currentImage">
									<li><a href="javascript:;"><img
											src="upload/${currentImage.name}" width="600" height="500"
											alt="" /></a></li>

								</c:forEach>
							</ul>
						</div>
					</div>

				</div>
				<div>
					<ul id="houseInfo">

						<li><label>售&nbsp;&nbsp;价：</label> <span><i>${house.salePrice }</i>&nbsp;万
						</span></li>
						<li><label>单&nbsp;&nbsp;价：</label> <span>${house.salePrice/house.houseArea }&nbsp;万元/㎡</span></li>
						<li><label>户&nbsp;&nbsp;型：</label> <span> ${house.room }&nbsp;室&nbsp;${house.hall }&nbsp;厅&nbsp;${house.bathroom }&nbsp;卫
								- &nbsp;123.00 ㎡</span></li>
						<li><label>概&nbsp;&nbsp;况：</label> <span>${house.orientation }&nbsp;-
								&nbsp;${house.housingType }&nbsp;-&nbsp;${utilYear} 年房龄</span></li>
						<li><label>楼&nbsp;&nbsp;层：</label> <span>${house.floor }/${house.totalFloor }</span></li>
						<li><label>小&nbsp;&nbsp;区：</label> <span>${house.smallArea }</span></li>
						<li><label>联&nbsp;系&nbsp;人：</label> <span>${house.contactPerson }</span></li>
						<li><label>联&nbsp;系&nbsp;方&nbsp;式：</label> <span><i>
									${house.contactTel}</i></span></li>
					</ul>
				</div>
				<div style="clear: both;"></div>
				<!--房屋描述以及照片  -->
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation"><a href="#">房屋描述</a></li>
				</ul>
				<div id="houseDetailDescript">
					<ul>
						<li>房屋产权：<span> ${house.propertyRightType}</span></li>
						<li>建筑面积：<span>${house.houseArea} &nbsp;㎡</span></li>
						<li>房屋类型：<span>${house.housingType}</span></li>
						<li>建筑结构：<span>${house.buildingStructure}</span></li>
						<li>装修程度：<span>${house.decoration}</span></li>
						<li>土地使用年限：<span>${house.propertyRightYear}&nbsp;年</span></li>
						<li>电梯：<span><c:choose>
									<c:when test="${house.hasElevator}">有</c:when>
									<c:otherwise>无</c:otherwise>
								</c:choose></span>
						</li>

					</ul>
					<div>${house.detailDesc}</div>
				</div>
				<ul class="nav nav-tabs">
					<li role="presentation" class="active"><a href="#">房屋照片</a></li>
				</ul>
				<div id="housePhotos">
					<c:forEach items="${house.houseImages}" var="currentImage">
						<img src="upload/${currentImage.name}" alt="" />
						<br>

					</c:forEach>

				</div>




			</div>
		</div>

	</div>
	<script src="js/pic_tab.js"></script>
	<script type="text/javascript">
		jq('#demo1').banqh({
			box : "#demo1",//总框架
			pic : "#ban_pic1",//大图框架
			pnum : "#ban_num1",//小图框架
			prev_btn : "#prev_btn1",//小图左箭头
			next_btn : "#next_btn1",//小图右箭头
			pop_prev : "#prev2",//弹出框左箭头
			pop_next : "#next2",//弹出框右箭头
			prev : "#prev1",//大图左箭头
			next : "#next1",//大图右箭头
			pop_div : "#demo2",//弹出框框架
			pop_pic : "#ban_pic2",//弹出框图片框架
			pop_xx : ".pop_up_xx",//关闭弹出框按钮
			mhc : ".mhc",//朦灰层
			autoplay : true,//是否自动播放
			interTime : 5000,//图片自动切换间隔
			delayTime : 400,//切换一张图片时间
			pop_delayTime : 400,//弹出框切换一张图片时间
			order : 0,//当前显示的图片（从0开始）
			picdire : true,//大图滚动方向（true为水平方向滚动）
			mindire : true,//小图滚动方向（true为水平方向滚动）
			min_picnum : 4,//小图显示数量
			pop_up : true
		//大图是否有弹出框
		})
	</script>
</body>
</html>