<%@ page import="dbconn.dbconn" %> 
<%@page import="java.sql.PreparedStatement"%> 
<%@ page import="java.sql.*"%> 
<%@ page import="bean.cartbean" %> 
<%@ page import="imple.imple" %> 
<%@ page import="inter.inter" %> 
<%@ page import="java.io.IOException"%> 
<%@ page import="javax.servlet.ServletException" %> 
<%@ page import="javax.servlet.annotation.WebServlet"%> 
<%@ page import="javax.servlet.http.HttpServlet"%> 

<%@ page import="javax.servlet.http.HttpServletRequest"%> 
<%@ page import="javax.servlet.http.HttpServletResponse"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<title>Insert title here</title> 
</head> 
<body> 
<% 
String foodid=request.getParameter("foodid");
String price=request.getParameter("price"); 
String uemail=request.getParameter("uemail"); 
String pic=request.getParameter("pic"); 
String foodname=request.getParameter("foodname"); String cate=request.getParameter("cate"); 
cartbean ap=new cartbean(); 
ap.setFoodid(foodid); 
ap.setPrice(price); 
ap.setUserid(uemail); 
ap.setPic(pic); 
ap.setFoodname(foodname); 
ap.setCate(cate); 
ap.setTotal(price); 
inter r=new imple(); 
int m=r.ca(ap); 
if(m==1){ 
response.sendRedirect("uservegview.jsp"); 
} 
else{ 
response.sendRedirect("error1.jsp"); 
}
%> 


</body> 
</html> 
