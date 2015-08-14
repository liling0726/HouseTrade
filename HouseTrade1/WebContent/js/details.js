/**
 * author:lizhen
 * time:2015/7/25
 */
var details = {
		photoNum:0,
		initPage:function(){
			
		},
		inputBoxClick:function(){
			
			//小区
			$("#id_xiaoqu").focus(function(){
				if($("#tip_xiaoqu").prev().val()==""){
					$("#tip_xiaoqu").css("display","inline-block");
					$("#tip_xiaoqu").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_xiaoqu").html("2-20字,不能填写电话、特殊符号").css("color","#6495ED");
				}else{
					$("#tip_xiaoqu").css("display","none");
				}
				
			});
			$("#id_xiaoqu").blur(function(){
				if($("#tip_xiaoqu").prev().val()==""){
					$("#tip_xiaoqu").css("display","inline-block");
					$("#tip_xiaoqu").removeClass("validatorFocus").addClass("validatorError");
					$("#id_xiaoqu").css("border","1px solid #EE5C42");
					$("#tip_xiaoqu").html("忘记填写小区名称啦").css("color","#EE5C42");
				}else{
					$("#tip_xiaoqu").css("display","none");
					$("#id_xiaoqu").css("border","1px solid #458B00");
				}
			});
				
			
			//地址
			$("#id_adress").focus(function(){
				if($("#tip_adress").prev().val()==""){
					$("#tip_adress").css("display","inline-block");
					$("#tip_adress").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_adress").html("2-30字,不能填写电话、特殊符号").css("color","#6495ED");
				}else{
					$("#tip_adress").css("display","none");
				}
			});
			$("#id_adress").blur(function(){
				if($("#tip_xiaoqu").prev().val()==""){
					$("#tip_adress").css("display","inline-block");
					$("#tip_adress").removeClass("validatorFocus").addClass("validatorError");
					$("#id_adress").css("border","1px solid #EE5C42");
					$("#tip_adress").html("忘记填写小区地址啦").css("color","#EE5C42");
				}else{
					$("#tip_adress").css("display","none");
					$("#id_adress").css("border","1px solid #458B00");
				}
			});
			//户型
			$("#id_shi").focus(function(){
				if($(this).val()==""){
					$("#tip_span_huxing").css("display","inline-block");
					$("#tip_span_huxing").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_span_huxing").html("填写1、2、3等数字，不能为0").css("color","#6495ED");
				}else{
					$("#tip_span_huxing").css("display","none");
				}
			});
			$("#id_ting").focus(function(){
				if($(this).val()==""){
					$("#tip_span_huxing").css("display","inline-block");
					$("#tip_span_huxing").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_span_huxing").html("填写1、2、3等数字，没有请填0").css("color","#6495ED");
				}else{
					$("#tip_span_huxing").css("display","none");
					$("#id_xiaoqu").css("border","1px solid #458B00");
				}
			});
			$("#id_wei").focus(function(){
				if($(this).val()==""){
					$("#tip_span_huxing").css("display","inline-block");
					$("#tip_span_huxing").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_span_huxing").html("填写1、2、3等数字，没有请填0").css("color","#6495ED");
				}else{
					$("#tip_span_huxing").css("display","none");
				}
			});
			$("#id_area").focus(function(){
				if($(this).val()==""){
					$("#tip_span_huxing").css("display","inline-block");
					$("#tip_span_huxing").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_span_huxing").html("请填写面积").css("color","#6495ED");
				}else{
					$("#tip_span_huxing").css("display","none");			
				}
			});
			
			
			$("#id_shi").blur(function(){
				if($(this).val()==""){
					$("#tip_span_huxing").css("display","inline-block");
					$("#tip_span_huxing").removeClass("validatorFocus").addClass("validatorError");
					$("#id_shi").css("border","1px solid #EE5C42");
					$("#tip_span_huxing").html("忘记填写室啦").css("color","#EE5C42");
				}else{
					$("#tip_span_huxing").css("display","none");
					$("#id_shi").css("border","1px solid #458B00");
				}
			});
			$("#id_ting").blur(function(){
				if($(this).val()==""){
					$("#tip_span_huxing").css("display","inline-block");
					$("#tip_span_huxing").removeClass("validatorFocus").addClass("validatorError");
					$("#id_ting").css("border","1px solid #EE5C42");
					$("#tip_span_huxing").html("忘记填写厅啦").css("color","#EE5C42");
				}else{
					$("#tip_span_huxing").css("display","none");
					$("#id_ting").css("border","1px solid #458B00");
				}
			});
			$("#id_wei").blur(function(){
				if($(this).val()==""){
					$("#tip_span_huxing").css("display","inline-block");
					$("#tip_span_huxing").removeClass("validatorFocus").addClass("validatorError");
					$("#id_wei").css("border","1px solid #EE5C42");
					$("#tip_span_huxing").html("忘记填写卫啦").css("color","#EE5C42");
				}else{
					$("#tip_span_huxing").css("display","none");
					$("#id_wei").css("border","1px solid #458B00");
				}
			});
			$("#id_area").blur(function(){
				if($(this).val()==""){
					$("#tip_span_huxing").css("display","inline-block");
					$("#tip_span_huxing").removeClass("validatorFocus").addClass("validatorError");
					$("#id_area").css("border","1px solid #EE5C42");
					$("#tip_span_huxing").html("忘记填写面积啦").css("color","#EE5C42");
				}else{
					$("#tip_span_huxing").css("display","none");
					$("#id_area").css("border","1px solid #458B00");
				}
			});
			
			//楼层
			$("#id_ceng").focus(function(){
				if($(this).val()==""){
					$("#tip_span_ceng").css("display","inline-block");
					$("#tip_span_ceng").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_span_ceng").html("数字填写，地下室用“负数”填写，最多可填写两位哦").css("color","#6495ED");
				}else{
					$("#tip_span_ceng").css("display","none");
				}
			});
			$("#id_total").focus(function(){
				if($(this).val()==""){
					$("#tip_span_ceng").css("display","inline-block");
					$("#tip_span_ceng").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_span_ceng").html("数字填写，最多可填写两位哦").css("color","#6495ED");
				}else{
					$("#tip_span_ceng").css("display","none");
				}
			});
			$("#id_ceng").blur(function(){
				if($(this).val()==""){
					$("#tip_span_ceng").css("display","inline-block");
					$("#tip_span_ceng").removeClass("validatorFocus").addClass("validatorError");
					$("#id_ceng").css("border","1px solid #EE5C42");
					$("#tip_span_ceng").html("忘记填写楼层啦").css("color","#EE5C42");
				}else{
					$("#tip_span_ceng").css("display","none");
					$("#id_ceng").css("border","1px solid #458B00");
				}
			});
			$("#id_total").blur(function(){
				if($(this).val()==""){
					$("#tip_span_ceng").css("display","inline-block");
					$("#tip_span_ceng").removeClass("validatorFocus").addClass("validatorError");
					$("#id_total").css("border","1px solid #EE5C42");
					$("#tip_span_ceng").html("忘记填写总楼层啦").css("color","#EE5C42");
				}else{
					$("#tip_span_ceng").css("display","none");
					$("#id_total").css("border","1px solid #458B00");
				}
			});
			
			//房屋情况
			$("#id_orientation").blur(function(){
				if($(this).val()==""){
					$("#tip_span_house_info").css("display","inline-block");
					$("#tip_span_house_info").removeClass("validatorFocus").addClass("validatorError");
					$("#id_orientation").css("border","1px solid #EE5C42");
					$("#tip_span_house_info").html("忘记填写朝向啦").css("color","#EE5C42");
				}else{
					$("#tip_span_house_info").css("display","none");
				}
			});
			$("#id_decoration").blur(function(){
				if($(this).val()==""){
					$("#tip_span_house_info").css("display","inline-block");
					$("#tip_span_house_info").removeClass("validatorFocus").addClass("validatorError");
					$("#id_decoration").css("border","1px solid #EE5C42");
					$("#tip_span_house_info").html("忘记填写装修情况啦").css("color","#EE5C42");
				}else{
					$("#tip_span_house_info").css("display","none");
					$("#id_orientation").css("border","1px solid #458B00");
				}
			});
			//建筑年代
			$("#id_times").focus(function(){
				if($(this).val()==""){
					$("#tip_span_niandai").css("display","inline-block");
					$("#tip_span_niandai").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_span_niandai").html("年代用4位数字填写，如“2009”").css("color","#6495ED");
				}else{
					$("#tip_span_niandai").css("display","none");
				}
			});
			$("#id_times").blur(function(){
				if($(this).val()==""){
					$("#tip_span_niandai").css("display","inline-block");
					$("#tip_span_niandai").removeClass("validatorFocus").addClass("validatorError");
					$("#id_times").css("border","1px solid #EE5C42");
					$("#tip_span_niandai").html("忘记填写建筑年代啦").css("color","#EE5C42");
				}else{
					$("#tip_span_niandai").css("display","none");
					$("#id_times").css("border","1px solid #458B00");
				}
			});
			
			//售价
			$("#id_price").focus(function(){
				if($(this).val()==""){
					$("#tip_span_price").css("display","inline-block");
					$("#tip_span_price").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_span_price").html("最多一位小数哦").css("color","#6495ED");
				}else{
					$("#tip_span_price").css("display","none");
				}
			});
			$("#id_price").blur(function(){
				if($(this).val()==""){
					$("#tip_span_price").css("display","inline-block");
					$("#tip_span_price").removeClass("validatorFocus").addClass("validatorError");
					$("#id_price").css("border","1px solid #EE5C42");
					$("#tip_span_price").html("忘记填写售价啦").css("color","#EE5C42");
				}else{
					$("#tip_span_price").css("display","none");
					$("#id_price").css("border","1px solid #458B00");
				}
			});
			
			//标题
			$("#id_title").focus(function(){
				if($(this).val()==""){
					$("#tip_span_title").css("display","inline-block");
					$("#tip_span_title").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_span_title").html("6-30字，不能填写电话哦").css("color","#6495ED");
				}else{
					$("#tip_span_title").css("display","none");
				}
			});
			$("#id_title").blur(function(){
				if($(this).val()==""){
					$("#tip_span_title").css("display","inline-block");
					$("#tip_span_title").removeClass("validatorFocus").addClass("validatorError");
					$("#id_title").css("border","1px solid #EE5C42");
					$("#tip_span_title").html("忘记填写标题啦").css("color","#EE5C42");
				}else{
					$("#tip_span_title").css("display","none");
					$("#id_title").css("border","1px solid #458B00");
				}
			});
			
			//描述
			$("#id_description").focus(function(){
				if($(this).val()==""){
					$("#tip_span_description").css("display","inline-block");
					$("#tip_span_description").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_span_description").html("10-800字，不能填写电话、特殊符号  <br/>例如：小区环境，房屋产权，周边配套，交通情况...").css("color","#6495ED");
				}else{
					$("#tip_span_description").css("display","none");
				}
			});
			$("#id_description").blur(function(){
				if($(this).val()==""){
					$("#tip_span_description").css("display","inline-block");
					$("#tip_span_description").removeClass("validatorFocus").addClass("validatorError");
					$("#id_description").css("border","1px solid #EE5C42");
					$("#tip_span_description").html("忘记填写描述啦").css("color","#EE5C42");
				}else{
					$("#tip_span_description").css("display","none");
					$("#id_description").css("border","1px solid #458B00");
				}
			});
			
			//联系人
			$("#id_person").blur(function(){
				if($(this).val()==""){
					$("#tip_span_person").css("display","inline-block");
					$("#tip_span_person").removeClass("validatorFocus").addClass("validatorError");
					$("#id_person").css("border","1px solid #EE5C42");
					$("#tip_span_person").html("忘记填写联系人姓名啦").css("color","#EE5C42");
				}else{
					$("#tip_span_person").css("display","none");
					$("#id_person").css("border","1px solid #458B00");
				}
			});
			
			//联系电话
			$("#id_phoneNum").focus(function(){
				if($(this).val()==""){
					$("#tip_span_phone").css("display","inline-block");
					$("#tip_span_phone").removeClass("validatorError").addClass("validatorFocus");
					$("#tip_span_phone").html("分机请用'-'隔开，分机号最多为6位").css("color","#6495ED");
				}else{
					$("#tip_span_phone").css("display","none");
				}
			});
			$("#id_phoneNum").blur(function(){
				if($(this).val()==""){
					$("#tip_span_phone").css("display","inline-block");
					$("#tip_span_phone").removeClass("validatorFocus").addClass("validatorError");
					$("#id_phoneNum").css("border","1px solid #EE5C42");
					$("#tip_span_phone").html("忘记填写联系电话啦").css("color","#EE5C42");
				}else{
					$("#tip_span_phone").css("display","none");
					$("#id_phoneNum").css("border","1px solid #458B00");
				}
			});
		},
		selectItemClick:function(){
//			$("#id_orientation option").click(function(){
//				var var_value = $(this).val();
//				$("#orientation").val(var_value);
//			});
		},
		agentChoose:function(){
			$("#agent0").click(function(){
				$(this).removeClass("rent-mode").addClass("rent-on");
				$("#agent1").removeClass("rent-on rent-mode").addClass("rent-mode");
			});
			$("#agent1").click(function(){
				$(this).removeClass("rent-mode").addClass("rent-on");
				$("#agent0").removeClass("rent-on  rent-mode").addClass("rent-mode");
			});
		},
		addPhotoes:function(){
			var myselfObj = this;
			$("#addPhoto").click(function(){
				var html="<div><input type='file' name='files' style='margin:10px 0;display:inline-block'><span class='glyphicon glyphicon-remove'></span><br/></div>";
				$("#addFile").append(html);
				myselfObj.photoNum++;
				if(myselfObj.photoNum == 7){
					$(this).css("display","none");
				}
			});  
		},
		deletePhotoes:function(){
			var myselfObj = this;
			$(".glyphicon").live("click",function(){
//				console.log($(this).prev());
				$(this).parent().remove();
				myselfObj.photoNum--;
				if(myselfObj.photoNum >0 && myselfObj.photoNum < 7){
					$("#addPhoto").css("display","inline-block");
				}
			});
		}
		
};
$(function(){

//	run();
	details.initPage();
//	function run(){
//		setInterval(details.inputBoxClick,5);
//	}
	details.addPhotoes();
	details.deletePhotoes();
	details.inputBoxClick();
	details.inputBoxClick();
	details.selectItemClick();
	details.agentChoose();
	//添加上传照片


});