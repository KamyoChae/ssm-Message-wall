/*
* @Author: Administrator
* @Date:   2018-11-15 08:52:27
* @Last Modified by:   Administrator
* @Last Modified time: 2018-11-20 08:48:39
*/

'use strict';
/*嵌入背景微动*/
$(window).scroll(function(e){
    var k = $(window).scrollTop()/20;
    $('.screen1').css("backgroundPosition", "0 " + (30 - k) + "px");
    $('.screen2').css("backgroundPosition", "30% " + (100 - k) + "px");
    $('.screen3').css("backgroundPosition", "0 " + (150 - k) + "px");
    var x = $(window).scrollTop();
	var y = $(".topic").offset().top;
	/*导航栏*/
	if(x > y){
		$(".topDiv").addClass('topDivFixed');
	}
	else{
		$(".topDiv").removeClass('topDivFixed');
	}
});
/*图片轮播*/
var num = 1;
jQuery(function($){
	setInterval(function(){
		if(num == 4)
			num = 0;
		$('.titleDiv>div').eq(num).addClass('introduction');
		$('.titleDiv>div').eq(num).siblings().removeClass('introduction');
		num++;
	}, 3000);
})