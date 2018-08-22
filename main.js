// JavaScript Document

///含ERR的span标签 字体颜色改为红色
function err(){
	$('span:contains(ERR)').addClass("err");
}//函数err

function setcookie(name, value, daysToLive){
	var cookie = name + "=" + encodeURIComponent(value);
	if(typeof daysToLive == "number")
		cookie += ";max-age=" + (daysToLive*60*60*24);
		document.cookie=cookie;
}

function getcookies(){
	var cookie ={};
	var all = document.cookie;
	if( all ==="")
		return cookie;
	var list =all.split("; ");
	for(var i=0;i< list.length; i++){
		var c = list[i];
		var p = c.indexOf("=");
		var name =c.substring(0,p);
		var value = c.substring(p+1);
		value = decodeURIComponent(value);
		cookie[name] = value;
	}
	return cookie;
}

function getcookie(name){
	cookie = getcookies();
	return cookie[name];
}