<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@page import="hello.hello" %>
<span>
<%  request.setCharacterEncoding("UTF-8");
    String uid = request.getParameter("uid");
    String upwd = request.getParameter("pwd");
    String res = hello.loginCheck(uid,upwd);
    
    System.out.print(res);
    out.print(res);
	
    if(res.indexOf("ERR")==-1){
		Cookie uidCookie = new Cookie("uid", uid); 
		uidCookie.setMaxAge(24*60*60);
		uidCookie.setPath("/xyz/");
		response.addCookie(uidCookie);
		Cookie upwdCookie = new Cookie("upwd", upwd); 
		uidCookie.setMaxAge(24*60*60);
		uidCookie.setPath("/xyz/");
		response.addCookie(upwdCookie);
	}
%>
	</span>
