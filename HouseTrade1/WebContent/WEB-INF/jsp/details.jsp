<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
  	<base href="<%=basePath%>">
    <title>填写详情</title>
	
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">    
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
    
    <link rel="stylesheet" href="css/details.css" type="text/css"></link>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/details.js"></script>
  </head>
  
  <body>
  	 <div id="content">
    	<div id="process">
			<ul class="clearfix">
				<li id="chooseBC">1 房产<a href="pub.jsp">(重选)</a><em></em><i></i></li>
				<li id="chooseSC">2 二手房出售<a href="pub.jsp">(重选)</a><em></em><i></i></li>
				<li id="writeDetails" class="current">3 填写详情</li>
			</ul>
		</div>
		<p id="house_pub_tip" class="hd-title">
			<i id="tips_close" class="btnCls"></i>个人每天可以发布
			<i class="fc-red">3 </i>条信息，经纪人或中介可发布
			<i class="fc-red">20 </i>条信息，
			<i class="fc-red">* </i>表示必填。
		</p>
		<div class="add-detail">
			<form action="addInfo" id="id_post_form" method="post" enctype="multipart/form-data" novalidate="novalidate">
				<table class="nc-table">
					<tr class="t_tr"><th width="100"><span class="star">*</span>小区</th>
						<td>
				            <input type="text" size="40" name="smallArea" value="" class="input-style" id="id_xiaoqu" autocomplete="off">
				            <span id="tip_xiaoqu" class="validatorMsg"></span>
				        </td>
					</tr>
				<!-- 	<tr><th width="100"><span class="star">*</span>地址</th>
						<td>
				            <input type="text" size="40" name="adress" value="" class="input-style" id="id_adress" placeholder="详细地址" autocomplete="off">
				            <span id="tip_adress" class="validatorMsg"></span>
				        </td>
					</tr> -->
					<tr>
				        <th width="100"><span class="star">*</span>户型</th>
				        <td>
				            <span class="tbl-txt"><input style="text-align:center;" type="text" value="" id="id_shi" maxlength="2" name="room" class="input-style" size="2"></span>
				            <span class="tbl-txt">室</span>
				             <span class="tbl-txt"><input style="text-align:center;" type="text" value="" id="id_ting" maxlength="2" name="hall" class="input-style" size="2"></span>
				            <span class="tbl-txt">厅</span>
				             <span class="tbl-txt"><input style="text-align:center;" type="text" value="1" id="id_wei" maxlength="2" name="bathroom" class="input-style" size="2"></span>
				            <span class="tbl-txt">卫</span>
				            <span class="tbl-txt"><input style="text-align:center;" type="text" value="" id="id_area" placeholder="面积" name="houseArea" class="input-style huxing" size="4"></span>
				            <span class="tbl-txt">㎡</span>
				            <span id="tip_span_huxing" class="validatorMsg"></span>
				        </td>
				    </tr>    <tr>
				        <th width="100"><span class="star">*</span>楼层</th>
				        <td>
				            <span class="tbl-txt"><input type="text" value="" id="id_ceng" maxlength="2" name="floor" class="input-style" size="2"></span>
				            <span class="tbl-txt">层 / 共</span>
				            <span class="tbl-txt"><input type="text" value="" id="id_total" maxlength="2" name="totalFloor" class="input-style" size="2"></span>
				            <span class="tbl-txt">层</span>
				            <span id="tip_span_ceng" class="validatorMsg"></span>                    
				        </td>
				    </tr>
				    <tr>
				        <th width="100"><span class="star"></span>&nbsp;电梯</th>
				        <td class="space" id="elevator">
				            <label><input type="radio" autocomplete="off" value="1" name="hasElevator">有</label>
				            <label><input type="radio" autocomplete="off" value="2" name="hasElevator">无</label>
				        </td>
				    </tr>
				    <tr>
					    <th width="120"><span class="star" style="padding:5px;">*</span>房屋情况</th>
					    <td width="900">
					       	 <div class="select-box" style="margin-right:10px;float:left">
								<select class="select-btn sel-btn-hover" id="id_orientation" name="orientation">
								  <option value="">-朝向-</option>
								  <option value ="东">东</option>
								  <option value ="西">西</option>
								  <option value="南">南</option>
								  <option value="北">北</option>
								  <option value="东南">东南</option>
								  <option value="东北">东北</option>
								  <option value="西南">西南</option>
								  <option value="西北">西北</option>
								  <option value="南北">南北</option>
								  <option value="东西">东西</option>
								</select>
								<!--  <input type="hidden" autocomplete="off" name="orientation" id="orientation" value="" class="select-input"> -->
					       	 </div>             
					       	 <div class="select-box" style="margin-right:10px;float:left">
								<select class="select-btn sel-btn-hover" id="id_decoration" name="decoration">
								  <option value="">-装修情况-</option>
								  <option value ="豪华装修">豪华装修</option>
								  <option value ="精装修">精装修</option>
								  <option value="中等装修">中等装修</option>
								  <option value="简单装修">简单装修</option>
								  <option value="毛坯">毛坯</option>
								</select>
								<!--  <input type="hidden" autocomplete="off" name="decoration" id="decoration" value="" class="select-input">  -->
					       	 </div>             
					       	 <div class="select-box" style="margin-right:10px;float:left">
								<select class="select-btn sel-btn-hover" id="id_buildingStructure" name="buildingStructure">
								  <option value="">建筑结构</option>
								  <option value ="低层板楼">低层板楼</option>
								  <option value ="高层板楼">高层板楼</option>
								  <option value="塔楼">塔楼</option>
								  <option value="板塔结合">板塔结合</option>
								  <option value="其他">其他</option>
								</select>
								<!-- <input type="hidden" autocomplete="off" name="buildingStructure" id="buildingStructure" value="" class="select-input">  -->
					       	 </div>           
					       	 <div class="select-box" style="margin-right:10px;float:left">
								<select class="select-btn sel-btn-hover" id="id_houseType" name="housingType">
									<option value="">普通住宅</option>
						       	 	<option value="平房/四合院">平房/四合院</option>
						       	 	<option value="普通住宅">普通住宅</option>
						       	 	<option value="公寓">公寓</option>
						       	 	<option value="商住两用">商住两用</option>
						       	 	<option value="别墅">别墅</option>
						       	 	<option value="其他">其他</option>
						       	 </select>
						       	 <!-- <input type="hidden" autocomplete="off" name="houseType" id="houseType" value="" class="select-input"> -->
					       	</div>              
					       	<span id="tip_span_house_info" class="validatorMsg">
					       	</span>
					     </td>
					</tr>
					<tr>  
				        <th width="100"><span class="star">*</span>产权</th>
				        <td>
				           <div class="select-box" style="margin-right:10px;float:left">
							<select class="select-btn sel-btn-hover" id="id_propertyRightType" name="propertyRightType">
				           		<option value="商品房">商品房</option>
				           		<option value="经济适用房">经济适用房</option>
				           		<option value="商住两用">商住两用</option>
				           		<option value="其他">其他</option>
				           	</select>
				           	<!-- <input type="hidden" autocomplete="off" name="propertyRightYear" id="propertyRightYear" value="" class="select-input"> -->
				           </div>                 
				           <div class="select-box" style="margin-right:10px;float:left">
								<select class="select-btn sel-btn-hover" id="id_propertyRightYear" name="propertyRightYear">
						       	 	<option value="70">70年</option>
						       	 	<option value="50">50年</option>
						       	 	<option value="40">40年</option>
						       	 </select>
						       	 <!-- <input type="hidden" autocomplete="off" name="propertyRightType" id="propertyRightType" value="" class="select-input"> -->
					       	</div>
				        </td>     
				    </tr>
				    <tr> 
				        <th width="100"><span class="star" style="padding-left:0px;">*</span>建筑年代</th>
				        <td>
				            <span class="tbl-txt"><input type="text" value="" id="id_times" name="constructionYear" class="input-style" size="5"></span>
				            <span class="tbl-txt">年</span>
				            <span id="tip_span_niandai" class="validatorMsg"></span>
				        </td> 
				    </tr>
				    <tr> 
				        <th width="100"><span class="star">*</span>售价</th>   
				        <td>
				            <span class="tbl-txt"><input type="text" value="" id="id_price" name="salePrice" class="input-style" maxlength="5" size="5"></span><span class="tbl-txt">万元</span>
				            <span id="tip_span_price" class="validatorMsg"></span>
				        </td>
				    </tr>
				     <tr>
			            <th width="100"><span class="star">*</span>标题</th>
			            <td>
			                <input type="text" value="" id="id_title" placeholder="吸引人的标题可让更多的人看您的信息哦" maxlength="30" size="66" class="input-style" name="title">
			                <span id="tip_span_title" class="validatorMsg"></span>                    
			            </td>
			        </tr>
			        <tr>
			            <th width="100" valign="top"><span class="star">*</span>描述</th>
			            <td>
			                <div class="des-l">
			                	<textarea class="txtarea" autocomplete="off" placeholder="房屋详细信息，小区情况，周边配套，交通情况，对租客的要求，入住时间" name="detailDesc" id="id_description"></textarea>
			                	<span id="tip_span_description" class="validatorMsg" style="position:absolute;left:880px;top:590px;"></span>
			                </div> 
			            </td>
			        </tr>
			        <tr>
		            	<th width="100" valign="middle" style="padding-left:20px;">上传照片</th>
	                	<td width="846" style="padding-bottom:20px;">
		                 	<div id="ui-uploader-1" class="ui-uploader" style="margin-left:10px;" >
		                
								<input type="file" name="files" style="margin:10px 0; display:inline-block;">
								<button  id="addPhoto" type="button" class="btn" style="margin-left:60px;border:1px solid gray"><span class="glyphicon glyphicon-plus" style="color:gray"></span></button>
								<div id="addFile">
								</div>
		                        <span style="margin-left: 0" class="ui-uploader-message">最多8张，可多选上传，最大10MB，默认第一张为封面。有图可使浏览量增加3倍，并会在推荐位显示。</span>
		                    </div>
                    	<input type="hidden" name="images" id="input_upload_image1">
                    	
	                   </td>
			        </tr>
			       <!--  <tr>
					    <th width="100"><span class="star" style="padding-left:0px;">*</span>您的身份</th>
					    <td class="space">
					        <span><a class="rent-mode" id="agent0"><i></i>个人</a></span>
					        <span><a class="rent-mode" id="agent1"><i></i>经纪人</a></span>
					        <input type="hidden" value="" id="agent" name="user" autocomplete="off">
					        <span id="tip_span_agent"></span>                    
					    </td>
					</tr> -->
		            <tr>
			            <th width="100"><span class="star" style="padding-left:15px;">*</span>联系人</th>
			            <td>
			                <input type="text" value="" id="id_person" name="contactPerson" class="input-style" size="20">
			                <span id="tip_span_person" class="validatorMsg"></span> 
			            </td>
			        </tr>
			        <tr>
			            <th width="100"><span class="star" style="padding-left:0px;">*</span>联系电话</th>
			            <td>
		                    <input type="text" value="" id="id_phoneNum" name="contactTel" class="input-style" size="20" id="js-phone">
		                    <span id="tip_span_phone_im"></span>  
			                <span id="tip_span_phone" class="validatorMsg">
			                </span>         
			            </td>
			        </tr>
				</table>
				<input type="submit" value="发布信息" data-role="submit" class="job-btn-org">
			</form>
		</div>
	</div>
	<ul id="footer">
		<li><a target="_blank" rel="nofollow" href="http://www.ganji.com/misc/abouts/index.php?act=about">关于Ganji</a>-
			<a target="_blank" rel="nofollow" href="http://www.ganji.com/tuiguang/index/">赶集推广</a>-
			<a target="_blank" rel="nofollow" href="http://tuiguang.ganji.com/zhaoshang/agent.htm">渠道合作</a>-
			<a target="_blank" rel="nofollow" href="http://help.ganji.com/">帮助中心</a>-
			<a target="_blank" rel="nofollow" href="http://help.ganji.com/html/sjbmy/" class="fc-red">手机号被冒用</a>-
			<a target="_blank" rel="nofollow" href="http://www.ganji.com/misc/abouts/link.php?act=link">友情链接</a>-
			<a href="http://www.ganji.com/misc/abouts/index.php?act=job" rel="nofollow" target="_blank">招贤纳士</a>-
			<a href="http://mianyang.ganji.com/quxiandaohang/" target="_blank">区县导航</a>-
			<a href="http://mobile.ganji.com/?ca_name=mobile_other_bottom" rel="nofollow" target="_blank">手机赶集</a>-
			<a href="http://3g.ganji.com" target="_blank">赶集网触屏版</a>
		</li>
	</ul>
	<div class="appfix">
		<a class="ganji-ewm" target="_blank" href="http://mobile.ganji.com/?ca_name=mobile_fang5_fabu_youce" data-role="big">
			<span data-role="close"></span>
		</a>
	</div>
  </body>
</html>
