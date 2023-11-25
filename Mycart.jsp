<%@ page import="dbconn.dbconn" %> 
<%@page import="java.sql.PreparedStatement"%> 
<%@ page import="java.sql.*"%> 
<!DOCTYPE html>  
<html>
<head> 
<meta charset="ISO-8859-1"> 
<link rel="stylesheet" href="css1/bootstrap.min.css"> 

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<script src='https://kit.fontawesome.com/a076d05399.js'></script> 
<title>Insert title here</title> 
<style> 
body{ 
background-size:cover; 
} 
table,td,th { 
border: 2px solid black; 
} 

table { 
border-collapse: collapse; 
width: 90%; 
margin:20px; 
} 
td { 
text-align: center; 
height: 40px;
} 
th{ 
height: 30px; 
color: black; 
} 
a{ 
text-decoration:none; 
color:#4c0b0b; 
font-weight:bold; 
font-size:17px; 
} 
.mydiv{ 
text-decoration:none; 
color:#4c0b0b; 
font-weight:bold; 
font-size:37px; 
} 
h5{ 
marign:50px; 
}</style> 


</head> 
<body> 
<% 
String userid=session.getAttribute("user").toString(); int ftotal=0; 
int sno=0; 
%> 
<table>
<center> 
<div class="mydiv"> 
<a href="usermain.jsp">Back</a> 
</div><br> 
</center> 
<thead class="thead-dark"> 
<tr > 

<th scope="col">S.NO</th> 
<th scope="col">Food name</th> 
<th scope="col">Quantity</th> 
<th scope="col">price</th> 
<th scope="col">Category</th> 
<th scope="col">Sub Total</th> 
<th scope="col">Food</th> 
<th scope="col">Remove</th> 
</tr> 
</thead> 
<tbody> 
<% 
try{ 

Connection con=dbconn.create(); 
Statement st=con.createStatement(); 
ResultSet rs=st.executeQuery("SELECT * FROM food.cart where userid='"+userid+"' and status='Add to cart'"); 
while(rs.next()) 
{
%> 
<tr> 
<td><%=rs.getString(1) %></td> 
<td><%=rs.getString(7) %></td> 
<td><a href="indecaction.jsp?id=<%=rs.getString(1)%>&quantity=inc"><i class="fa fa-plus-square"></i> 
</a><%=rs.getString(4) %><a 
href="indecaction.jsp?id=<%=rs.getString(1)%>&quantity=dec"><i class="fa fa-minus-square"></i></a></td> 
<td><i class="fa fa-inr"></i><%=rs.getString(3) %></td> 

<td><%=rs.getString(8) %></td> 
<td><%=rs.getString(9) %></td> 
<td><img class="card-img-top" src="local/<%=rs.getString(6) %>" width="50" height="50" alt="Card image cap"></td> 
<td><a href="removefromcart.jsp?id=<%=rs.getString(1) %>">Remove<i class='fa fa-trash-alt'></i></a></td> 
</tr> 
<% 
} 
} 

catch(Exception e) 
{ 
System.out.println(e); 
} 
%> 
<thead>
<% 
try{ 
Connection con=dbconn.create(); 
Statement st=con.createStatement(); 
ResultSet rs1=st.executeQuery("SELECT sum(total) FROM food.cart where userid='"+userid+"' and status='Add to cart'"); 
while(rs1.next()) 
{ 
ftotal=rs1.getInt(1); 
System.out.println(ftotal); 
} 
} 

catch(Exception e){ 
} 
%> 
<tr> 
<th scope="col" Style="background-color:;">Total: <%out.println(ftotal); %></th> 
<%if(ftotal>0){ %><th scope="col"><a href="payment.jsp?id=<%=ftotal%>&&user=<%=userid%>">Proceed to order</a></th><%} %> 
</tr> 
</thead> 
</tbody> 
</table> 
<div class="h5"> 
<h4>Continue to Order</h4>
<a href="uservegview.jsp"><button class="btn btn-danger" >VEG</button></a> 
<a href="uservegview.jsp"><button class="btn btn-danger" >NON-VEG</button></a> </div> 
</body> 
</html> 
