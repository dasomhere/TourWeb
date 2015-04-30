<%@page import="java.sql.DriverManager"%>
<%@page import="javax.sql.DataSource"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>


<%
String id=request.getParameter("id");
String pwd=request.getParameter("password");
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="scott";
String password="tiger";
Class.forName(driver);
Connection con=DriverManager.getConnection(url, user, password);
String sql="select id,pwd from member where id=? and pwd=?";
// String sql="select * from member where id=?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1,id);
pstmt.setString(2,pwd);
ResultSet rs=pstmt.executeQuery();
boolean result=false;
if(rs.next()){
result=true;
}
rs.close();
pstmt.close();
con.close();
//결과를 xml로 응답하기
response.setContentType("text/xml;charset=utf-8");
PrintWriter pw=response.getWriter();
pw.print("<data>");
pw.print("<result>"+result+"</result>");
pw.print("</data>");
%>
