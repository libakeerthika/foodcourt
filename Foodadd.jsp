<html lang="en"> 
<%@ page import="java.util.*"%> 
<head> 
<script type="text/javascript" src="https://github.com/rubyeffect/easy_fill/tree/master/lib/easy_fill-0.0.1.min.js"></script>
<title>Reach Me</title> 
<link rel="stylesheet" type="text/css" href="appointment.css" /> 
<link rel="stylesheet" href="css/bootstrap.min.css"> 
<link rel="stylesheet" href="css/font-awesome.min1.css"> 
</head> 
<Style> 
body{ 
background-image:url("image/n13.jpg"); 
background-size:cover; 
} 
h3{ 
color:red; 
} 
</Style> 
<%String userid=session.getAttribute("user").toString(); %> 
<body> 
<div class="container"> 
<h3 style="font-weight: bold; text-align: center;margin-top: 10px">Add Veg Food Details</h3><br> 
<form method="post" action="fastfoodsjava" > 
<input type="hidden" class="form-control" name="foodid" value="00" required> <input

 type="hidden" class="form-control" name="uname" value="<%=userid%>" required> 
<div class="row">
<div class="card col-sm-5" style="padding-bottom:10px;background-color: #333;color:#fff;padding:10px;margin-left:30%;width: 38em;margin-bottom: 25px"> 
<div class="form-group"> 
<label for="full_name" style="color:#fff;">Name Of Food:</label> 
<select class="form-control" name="foodname" id="foodname" 
onchange="getval(this)"> 
<option value="Chicken Rice">Chicken Rice</option> 
<option value="Chicken Chilly">Chicken Chilly</option> 
</select> </div> 
<div class="form-group"> 
<label for="email" style="color:#fff;">price:</label> 
<input type="number" class="form-control" id="price" placeholder="Enter price" name="price" onchange='multiply()' value=0 required> 
</div> 

<div class="form-group"> 
<label for="full_name" style="color:#fff;">Description</label> 
<input type="text" class="form-control" id="full_name" placeholder="Description" name="des" required> 
</div> 
<div class="form-group"> 
<label for="card_photo" style="color:#fff;">quantity:</label> 
<input type="text" class="form-control" placeholder="Quantities" name="quantity" id="qty" onchange='multiply()' required> 
</div> 
<div class="form-group"> 

<label for="card_photo" style="color:#fff;">Total Price:</label>
<input type="text" class="form-control" placeholder="Total Price" name="total" id="tot" onchange='multiply()' required> 
</div> 
<input type="hidden" class="form-control" placeholder="Total Price" name="status" value="fast" required> 
<div class="form-group"> 
<input type="hidden" value="n5.jpg" class="form-control" placeholder="Enter password" name="phot" accept="image/*" onchange="preview_image(event)" required> 
</div> 
<div class="form-group"> 
<label style="color:#fff;">Your selected File:</label><br> 
<input type="image" src="image/n5.jpg" id="output_image"/ height="200px"> 
</div> 
<center><button class="btn btn-danger btn-block" style="width:50%;" onclick="return Validate()">Order</button></center><br> 
</div> 
</div> 
<hr> 
</form> 
</div> 
</body>  
<script type='text/javascript'>  
function getval(sel) 
{ console.log(sel.value); 
if(sel.value=="Chicken Chilly"){
console.log(sel.value); 


document.getElementById('price').value=100; 
} 
else if(sel.value=="Chicken Rice"){ 
console.log(sel.value); 
document.getElementById('price').value=150; 
} 
else { 
document.getElementById('price').value=50; 
} 
} 
function multiply(){ 
var ans= 
(document.getElementById('price').value)*(document.getElementById('qty').value) document.getElementById('tot').value=ans; 
} 
</script>  
</html>  
