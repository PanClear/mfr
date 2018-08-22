// JavaScript Document
$(document).ready(function(e) {
	cookie = getcookies();
	for ( var c in cookie) {
		$('#main ul').prepend("<li><h2>"+c+"</h2><p class='context'>"+cookie[c]+"</p></li>");
	}
	var ali = document.getElementsByTagName('li');
	for(let i = 0; i < ali.length; i++){
	     ali[i].onclick = function(){
	    	 console.log("i="+i);
	     }
	}
});