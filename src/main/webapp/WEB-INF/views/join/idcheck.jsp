<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>


<%
	Connection con = null;
	String id=request.getParameter("id");
	String driver="oracle.jdbc.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	
	con = DriverManager.getConnection(url, user, password);
	Class.forName(driver);
	
	String sql="select * from member where id=?";
	PreparedStatement pstmt=con.prepareStatement(sql);
	pstmt.setString(1,id);
	ResultSet rs=pstmt.executeQuery();
	boolean result=false;
	if(rs.next()){
	result=true;
	}
	rs.close();
	pstmt.close();
	con.close();
%>
