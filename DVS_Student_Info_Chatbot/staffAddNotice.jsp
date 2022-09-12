<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="usertabs.html" %>
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

<h3 align="center" style="color:#FFFFFF">Add New Notice</h3>

<div class="logindiv">
  <form action="" method="post">
    <label for="fname"> Subject </label>
    <input type="text"  name="r1" placeholder=" Subject of Notice">
	
	 <label for="fname"> Matter </label><br />

     <textarea name="r2" cols="30" rows="5"></textarea>
	 
   
  
    <input type="submit" name="Submit" value="Click Here to Add new Notice">
	
  </form>
</div>



<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("r1");
String s2=request.getParameter("r2");

try{
int x=stmt.executeUpdate("insert into staffnotice(subject,matter) values('"+s1+"','"+s2+"')");
if(x!=0){
%>
<script>

alert("New Notice added Successfully");
</script>
<%
}

}catch(Exception e){
out.print(e);
%>
<script>

alert("This Notice already exist");
</script>
<%
}
}
 %>
</body>

</html>
