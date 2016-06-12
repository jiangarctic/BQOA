/**
 * Author:wandong Jiang
 * 2016-06-08
 */
$(document).ready(function(){
	changeCode();
	$("#codeImg").bind("click" , changeCode);
});

function changeCode(){
	$("#codeImg").attr("src" , "code.do?t="+getTimeStamp());
}

function getTimeStamp(){
	var time = new Date();
	return time.getTime();
}

function checkAndLogin(){
	var username = $("#username").val();
	var password = $("#password").val();
	$("#password").val($.md5($("#password").val()));
	var secCode = $("#secCode").val();
	var vali = true;
	if(username==''){
		$("#username").focus();
		$("#username").attr("style","border:1px solid red");
		$("#username").attr("placeholder","请填写用户名");
		vali= false;
	}
	if(password==''){
		vali = false;
		$("#password").attr("style","border:1px solid red");
	}
	if(secCode==''){
		vali = false;
		$("#secCode").attr("style","border:1px solid red");
		$("#secCode").attr("placeholder","请填写验证码");
	}
	if(vali==true){
		$.ajax({
			type:"POST",
			url:'login_login',
			data:{uName:username,pass:password,code:secCode,tm:new Date().getTime()},
			dataType:'json',
			cache:false,
			success:function(data){
				var msg = data.result;
				if(msg=="success"){
					window.location="to_home";
				}else if(msg=="emptyCode"){
					document.getElementById("errInfo").innerHTML="验证码为空";
					$("#secCode").focus();
				}else if(msg=="codeerr"){
					document.getElementById("errInfo").innerHTML="验证码错误";
					$("#secCode").focus();
				}else if(msg=="nulluser"){
					document.getElementById("errInfo").innerHTML="用户名或密码为空";
					$("#username").focus();
				}else if(msg=="usererr"){
					document.getElementById("errInfo").innerHTML="用户名或密码错误";
					$("#username").focus();
				}
			}
			
		});
	}
}