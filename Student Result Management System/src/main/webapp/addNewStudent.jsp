<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String prnNo=request.getParameter("prnNo");
String name=request.getParameter("name");
String motherName=request.getParameter("motherName");
String gender=request.getParameter("gender");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into student values('"+course+"','"+branch+"','"+prnNo+"','"+name+"','"+motherName+"','"+gender+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e){
	out.println(e);
}
%>