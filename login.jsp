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
    
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/xyz?useSSL=false&serverTimezone=Asia/Shanghai";
	String username="root";
	String pwd="root5493";
	String err="0";
	try{
		Connection conn = DriverManager.getConnection(url,username,pwd);
		PreparedStatement ps;
		String sql = "select * from login where uid ='"+uid;
		sql+="' and upwd ='" +upwd+"'";
		ps = conn.prepareStatement(sql);
		ResultSet res = ps.executeQuery();
		if(res.next()){
			out.print("welcome , "+res.getString("uid"));
		}
		else err="ERROR:账号或密码错误！";
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
