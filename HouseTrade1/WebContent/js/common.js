/**
 * author by YC
 */
$(function(){
	// 初始化轮播
	$(".start-slide").click(function(){
		$("#myCarousel").carousel('cycle');
	});
	// 停止轮播
	$(".pause-slide").click(function(){
		$("#myCarousel").carousel('pause');
	});
	// 循环轮播到上一个项目
	$(".prev-slide").click(function(){
		$("#myCarousel").carousel('prev');
	});
	// 循环轮播到下一个项目
	$(".next-slide").click(function(){
		$("#myCarousel").carousel('next');
	});
	// 循环轮播到某个特定的帧 
	$(".slide-one").click(function(){
		$("#myCarousel").carousel(0);
	});
	$(".slide-two").click(function(){
		$("#myCarousel").carousel(1);
	});
	$(".slide-three").click(function(){
		$("#myCarousel").carousel(2);
	});
	var ok1=false;
	var ok2=false;
	var ok3=false;
	var ok4=false;
	
      // 验证用户名
      $('input[name="userName"]').focus(function(){
          $(this).next().text('4-20个字符（中英文、数字、下划线）').removeClass().addClass('state2');
      }).blur(function(){
          if($(this).val().length >= 4 && $(this).val().length <=20 && $(this).val()!=''){
              $(this).next().text('输入成功').removeClass().addClass('state4');
              ok1=true;
          }else{
              $(this).next().text('请填写用户名').removeClass().addClass('state3');
          }
           
      });

      //验证密码
      $('input[name="password"]').focus(function(){
          $(this).next().text('6-16位，不包含空格').removeClass().addClass('state2');
      }).blur(function(){
          if($(this).val().length >= 6 && $(this).val().length <=20 && $(this).val()!=''){
              $(this).next().text('输入成功').removeClass().addClass('state4');
              ok2=true;
          }else{
              $(this).next().text('请填写密码').removeClass().addClass('state3');
          }
           
      });

	

	//验证确认密码
	$('input[name="repassword"]').focus(function(){
		$(this).next().text('重复输入一次密码').removeClass().addClass('state2');
	}).blur(function(){
		if($(this).val().length >= 6 && $(this).val().length <=20 && $(this).val()!='' && $(this).val() == $('input[name="password"]').val()){
			$(this).next().text('输入成功').removeClass().addClass('state4');
			ok3=true;
		}else{
			$(this).next().text('重复输入一次密码').removeClass().addClass('state3');
		}

	});

	//验证验证码
	$('input[name="valCode"]').focus(function(){
		   $(this).parent().next().text('请填写验证码').removeClass().addClass('state2');
	}).blur(function(){
		  if($(this).val()==""){
			$(this).parent().next().text('请填写验证码').removeClass().addClass('state3');
		  }else{
		   $(this).parent().next().text('输入成功').removeClass().addClass('state4');
           ok4=true;
       }
	});
	 //提交按钮,所有验证通过方可提交
	 
    $('#register').click(function(){
        if(ok1 && ok2 && ok3 && ok4){
            $('form').submit();
            alert("注册成功");
        }else{
            return false;
        }
    });
});

function reloadcode(){
	$("#imgcode").attr("src","../js/checkcode.jsp?random="+Math.random());
}

