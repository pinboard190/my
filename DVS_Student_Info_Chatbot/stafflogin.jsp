<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
	color: #FF0000;
}
body {
	background-color: #6699FF;
}
-->
</style>
</head>

<body>
<%@ include file="hometabs.html"%>
<%@ include file="db.jsp"%>
<div align="center" class="style1">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>Staff Login page</p>
</div>
<form id="form1" name="form1" method="post" action="">
  <table style="border-radius:20px;" width="345" height="141" border="0" align="center" bgcolor="#CCCCCC">
    <tr>
      <td><div align="right">Enter uername </div></td>
      <td><input type="text" name="username" /></td>
    </tr>
    <tr>
      <td><div align="right">Enter Password </div></td>
      <td><input type="password" name="password" /></td>
    </tr>
    
    <tr>
      <td>&nbsp;</td>
      <td><p>
        <input type="submit" name="Submit" value="Submit" />
        <input type="reset" name="Submit2" value="Reset" />
      </p>
        <p><a href="staffreg.jsp" target="_self">Register</a> </p></td>
    </tr>
  </table>
  <a href="staffreg.jsp" target="_self"></a>
</form>
<% 
if(request.getParameter("Submit")!=null){

String un=request.getParameter("username");
String pw=request.getParameter("password");
try{
rst=stmt.executeQuery("select * from login where username='"+un+"' and password='"+pw+"'");
if(rst.next()){
%>
<script>
alert("login successfull");
window.open("admintabs.html","_self");
</script>
<%

}else{
%>
<script>
alert("login Failed");

</script>
<%

}
}catch(Exception e){
out.print(e);

}


}


 %>
</body>
</html>
