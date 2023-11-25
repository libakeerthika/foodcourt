<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<title>Insert title here</title> 
<link rel="preconnect" href="https://fonts.googleapis.com"> 
<link rel="preconnect" href="https://fonts.googleapis.com"> 
<link rel="shortcut icon" href="/img/food.png" type="image/x-icon"> 
<style> 
@import url('https://fonts.googleapis.com/css2?family=Raleway:wght@100&display=swap'); </style> 
<style> 
@import url('https://fonts.googleapis.com/css2?family=Indie+Flower&family=Raleway:wght@100&display=swap'); </style> 
<style> 
body {
background-color: black; 
color: white; 
margin: 0px; 
padding: 0px; 
} 
header::before { 
background: url('https://cdn.pixabay.com/photo/2021/02/28/09/38/food-6056720_960_720.jpg') no-repeat center center/cover; 

content: ""; 
position: absolute; 
top: 0; 
left: 0; 
width: 100%; 
height: 100%; 
z-index: -1; 
opacity: 1.0; 
} 
.navigation { 
/* border: solid 4px black; */ 
border-radius: 10px; 
/* background-color: black; */ 
display: flex; 
justify-content: center; 
margin: 12px; 
padding: 10px;
} 
.item { 
list-style: none; 
margin: 5px; 
padding: 10px; 
color: yellow; 
font-family: Arial, Helvetica, sans-serif; font-family: 'Indie Flower', cursive; 
font-size: 20px; 
font-weight: bolder; 
transition: all 0.3s ease-in-out; 
} 
.item:hover{ 
transform: scale(1.5); 
} 
li a { 
color: yellow; 
text-decoration:none; 
font-weight: bold; 
font-family: "Times New Roman", Times, serif; font-size: 200%; 
text-shadow: 2px 1px black;
} 
li a:hover { 
text-decoration: none; 
color: black; 
} 
main { 
display: flex; 
margin: 3px 20px; 
flex-direction: column; 
align-items: center; 
justify-content: center; 
font-family: monospace; 
height: 344px; 
} 

h1 { 
font-size: 3rem; 
color: yellow; 
font-family: 'Raleway', sans-serif; text-shadow: 5px 5px black; animation-name: anime; 
animation-duration: 5s; 
animation-iteration-count: infinite; animation-direction: reverse; transition: all 0.5s ease-out; 
}
h1:hover{ 
transform: scale(1.2); 
} 
@keyframes anime { 
/* from{ 
width: 700px; 
} 
to{ 
width: 900px; 
} */ 
} 
input { 
border: solid 2px black; 

border-radius: 20px; 
width: 70vw; 
height: 40px; 
opacity: 0.4; 
font-size: x-large; 
text-align: center; 
font-family: 'Indie Flower', cursive; font-weight: bold; 
}
</style> 
</head> 
<body> 
<header> 
<nav class="navbar"> 
<ul class="navigation"> 
<li class="item"> <a href="adminlogin.jsp">Admin</a> </li> 
<li class="item"> <a href="userlogin.jsp">User</a> </li> 
<li class="item"> <a href="emplog.jsp">Chef</a> </li> 
</ul> 
</nav> 
<main> 
<h1>Welcome to Food World</h1> 
</main> 
</header> 
</body> 
</html> 
