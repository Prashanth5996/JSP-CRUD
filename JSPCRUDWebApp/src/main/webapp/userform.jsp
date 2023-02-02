<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	font-weight: bold;
	background-color:DarkMagenta;
}
#my1{
	color: DarkSalmon;
}
#my2{
	color:Yellow;
}
#my3{
	background-color:LawnGreen;
}
#my4{
	background-color:LightBlue; 
}
#my5{
	background-color:LightCoral;
}
span{
	color: red;
}
td{
	color:FloralWhite;
}
h1{
	margin: 35px;
}
</style>
</head>
<body>
<center>
<h1 id="my1"><u>JSP CRUD APPLICATION FOR USER</u></h1>
<button id="my3"><a href="viewusers.jsp">View All Records</a></button>
<p></p>
<h1 id="my2"><u>Add New User</u></h1>
<form action="adduser.jsp" method="post" name="f" onsubmit="return check()">
<table>
<tr><td>Id:</td>
<td><input type="number" name="id" placeholder="Enter Id Num"></td></tr>
<tr><td></td><td><span id="uid_errors"></span></td></tr>
<tr><td>Name:</td>
<td><input type="text" name="name" placeholder="Enter Name"></td></tr>
<tr><td></td><td><span id="name_errors"></span></td></tr>
<tr><td>Password:</td>
<td><input type="password" name="password" placeholder="Enter Password"></td></tr>
<tr><td></td><td><span id="pass_errors"></span></td></tr>
<tr><td>Email:</td>
<td><input type="email" name="email" placeholder="Enter Email Id"></td></tr>
<tr><td></td><td><span id="email_errors"></span></td></tr>
<tr><td>Sex:</td>
<td><input type="radio" name="sex" value="male">Male
	<input type="radio" name="sex" value="female">Female</td></tr>
	<tr><td></td><td><span id="sex_errors"></span></td></tr>
<tr><td>Country:</td>
<td>
<select name="country" style="width: 155px">
<option value="">----Select Country----</option>
<option>India</option>
<option>America</option>
<option>Londan</option>
<option>Pakistan</option>
<option>Afghanistan</option>
<option>Berma</option>
<option>Other</option>
</select>
</td></tr><tr><td></td><td><span id="ucoun_errors"></span></td></tr>
<tr>
<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input id="my4" type="submit" Value="Add User">&nbsp;&nbsp;&nbsp;&nbsp;
<input id="my5" type="reset" Value="Clear"></td>
</tr>
</table>
</form>
</center>
<script type="text/javascript">
function check(){
	
	let id=document.forms["f"]["id"].value;
    let arr1=[];
    let uid=parseInt(id);
    if(/^$/.test(id)){
        arr1.push(" Id can't left blank ");
    }
    document.getElementById("uid_errors").innerHTML=arr1.join(",");
    
    let name=document.forms["f"]["name"].value;
    let arr2=[];
    if(/^$/.test(name)){
        arr2.push("Name can't left blank");
    }else if(!/[\w]{4,10}/.test(name)){
        arr2.push("must follow validation rules");
    }
    document.getElementById("name_errors").innerHTML=arr2.join(",");
  
    let password=document.forms["f"]["password"].value;
    let arr3=[];
    if(/^$/.test(password)){
        arr3.push("Password can't left blank");
    }else if(!/[\w]{8}/.test(password)){
        arr3.push("must follow validation rules");
    }
    document.getElementById("pass_errors").innerHTML=arr3.join(",");
 
    let email=document.forms["f"]["email"].value;
    let arr4=[];
    if(/^$/.test(email)){
        arr4.push("Email can't left blank");
    }else if(!/^\w+([\.]?\w+)*@\w+([\.]?\w+)*(\.\w{2,4})+$/.test(email)){
        arr4.push("must follow validation rules");
    }
    
    document.getElementById("email_errors").innerHTML=arr4.join(",");
    let gender=document.forms["f"]["sex"].value;
    let arr5=[];
    if(gender==""){
        arr5.push("select gender");
    }
    document.getElementById("sex_errors").innerHTML=arr5.join(",");
    
    let country=document.forms["f"]["country"].value;
    let arr6=[];
    if(country==""){
        arr6.push("Select Country");
        document.getElementById("ucoun_errors").innerHTML=arr6.join(",");
        return false;
    }
    else{
    	return true;
    }
}
</script>
</body>
</html>