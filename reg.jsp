<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@page import="com.mysql.cj.jdbc.Driver" 
		import="java.sql.*"
%>
<span>
<%  request.setCharacterEncoding("UTF-8");
    String uname = request.getParameter("uname");
    String uid = request.getParameter("uid");
    String upwd = request.getParameter("pwd");
    //纯 jdbc 连接数据库
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/xyz?useSSL=false&serverTimezone=Asia/Shanghai";
	String username="root";
	String pwd="root5493";
	String err="0";
	try{
		Connection conn = DriverManager.getConnection(url,username,pwd);
		PreparedStatement ps;
		String sql = "insert into login(uid,uname,upwd) values(?,?,?);";
		ps = conn.prepareStatement(sql);
		ps.setString(1, uid);
		ps.setString(2, uname);
		ps.setString(3, upwd);
		int res= ps.executeUpdate();
		if(res>0){
			out.print("注册成功！");
		}
		else err="ERROR:账号或用户名已被使用！";
		if(!err.equals("0")){
			out.print(err);
		}
		}
	catch(Exception e){
		err="ERROR:数据库连接失败！";
		err+=e.toString();
		out.print(err);
	}
%>
	</span>
