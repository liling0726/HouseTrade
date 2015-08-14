/**
 * author:lizhen
 * time:2015/7/24
 */
var pubObj = {
		initPubHousePage:function(){
			
		},
		chooseBigClass:function(){
			$(".wrap #category li a").live("click",function(){
//				var str = $(this).html();
//				alert(str);
				$(this).addClass();
				$("#chooseBC").removeClass("current");
				$("#chooseSC").addClass("current");
				$("#housing_major").css("display","block");
			});
		},
		chooseSmallClass:function(){
			$(".wrap #housing_major li a").live("click",function(){
				location.href = "details.html";
			});
		}
};

$(function(){
	pubObj.initPubHousePage();
	pubObj.chooseBigClass();
	pubObj.chooseSmallClass();
});