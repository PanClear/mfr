// JavaScript Document
$(document).ready(function(e) {
	
	///登录按钮函数
    $('#loginbtn').click(function(){
		var id=$('#uid1').val();
		var pwd=$('#pwd1').val();
		var data="&uid="+id+"&pwd="+pwd;
		$.ajax({
			type:"POST",
			url:"pages/login2.jsp",
			data:data,
			success: function(html){
				$('#footer').html(html);
				err();
				if(getcookie('uid')==id){
					alert("Hello，uid="+id);
					window.open("pages/myxyz.html","_self");
				}
				else {
					alert("Failed to login!");
				}
			}
		});
		return false;
	});//loginbtn_click
	
    ///注册按钮函数
    $('#regbtn').click(function(){
    	var name=$('#uname').val();
		var id=$('#uid2').val();
		var pwd=$('#pwd2').val();
		var data="uname="+name+"&uid="+id+"&pwd="+pwd;
		$.ajax({
			type:"POST",
			url:"pages/reg.jsp",
			data:data,
			success: function(html){
				$('#footer').html(html);
				err();
			}
		});
		return false;
    });//reg_click

});//document_ready()

function reg(){//点击注册链接后执行的函数
	$('#reg').removeClass("hidden");
	$('#login').addClass("hidden");
}//函数 reg

function login(){
	$('#reg').addClass("hidden");
	$('#login').removeClass("hidden");
}
