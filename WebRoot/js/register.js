/*
* @Author: zhong
* @Date:   2018-11-02 09:52:14
* @Last Modified by:   Administrator
* @Last Modified time: 2018-11-12 17:14:07
*/
var arr = document.getElementsByClassName("rotationImg");
(function(){
	var i = 1;
	setInterval(function(){
		for (var j = 0; j < arr.length; j++) {
			arr[j].classList.remove('rotationImg1');
		}
		arr[i].classList.add('rotationImg1');
		console.log(i)
		console.log(arr[i].classList);
		i++;
		if(i >= arr.length){
			i = 0;
		}
	},5000)
	console.log(arr.length);
})()
function winload(){
	var arrp1 = document.getElementsByClassName("topic");
	var arrp2 = document.getElementsByClassName("topicP");
	arrp1[0].classList.add("enlarge");
	arrp2[0].classList.add("enlarge");
}
