<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="hometabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=button] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}

.logindiv {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-left:30%;
  margin-right:30%;
}
</style>
<body>

<h3 align="center" style="color:blue">Registration for New Student</h3>

<div class="logindiv">
  <form action="" method="post">
    <label for="fname"> First name </label>
    <input type="text"  name="r1" placeholder="Student Name" required>
	
	
	 <label for="fname"> <br />
	Course </label>
    <input type="text"  name="r2" placeholder="Course" required>
	<label for="fname"> phone number </label>
    <input type="text"  name="r3" placeholder="phone" pattern="[0-9]{10}" title="10 digit phone number" required>
	 <label for="fname"> Username </label>
    <input type="text"  name="r4" placeholder="username" v>

    <label for="lname">Password</label>
    <input type="text"  name="r5" placeholder="Your Password." pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>

   
  	
    <input type="submit" name="Submit" value="Click Here to Register">
	
  </form>
</div>
<br />
<br />
<br />
<br />
<br />
<br />



<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("r1");
String s2=request.getParameter("r2");
String s3=request.getParameter("r3");
String s4=request.getParameter("r4");
String s5=request.getParameter("r5");
String s6=request.getParameter("r6");

int x=stmt.executeUpdate("insert into student(name,dept,phone,username,password) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
if(x!=0){
%>
<script>

alert("New Student rregistered Successfully");
</script>
<%
}
}
 %>
</body>

</html>
