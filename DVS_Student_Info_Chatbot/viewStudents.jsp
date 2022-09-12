<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<%@ include file="admintabs.html" %> 
  <%@ include file="db.jsp" %>
<title>Untitled Document</title>
<style type="text/css">
<!--
 body {
	background-image: url(images/bg1.jpg);
}
.style1 {color: #FFFF00}

.button{
height:30px;
width:90px;
}

-->
</style>
</head>

<body>
<p align="center" style="color:blue">
  
  Registered Student Details</p>
<table width="872" border="0" align="center">
  <tr bgcolor="#999999">
    <td width="193"><strong>Name</strong></td>
    <td width="142"><strong>Dept</strong></td>
    <td width="128"><strong>Phone</strong></td>
    
    <td width="94"><strong>username</strong></td>
    <td width="141"><strong>Password</strong></td>
    <td width="148"><strong>ID</strong></td>
    <td width="148">&nbsp;</td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from student ");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="#003399">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>" size="15"/>
    </span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>" size="15"/>
    </span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>"/></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>" size="10"/>
    </span></td>
    <td><span class="style3 style1"><input name="e5" type="text" readonly="true" value="<%= rst.getString(5) %>"/></span></td>
    <td><span >
    <input name="e6" type="text" value="<%= rst.getString(6) %>" size="5" readonly="true" />
    </span></td>
    <td><input type="submit" name="Delete" value="Delete" /></td>
  </tr>
  </form>
  <% } %>
</table>

<p align="center" style="color:blue">&nbsp;</p>
<%

if(request.getParameter("accept")!=null){
try{
int x=stmt.executeUpdate("update registration set status='Accepted'  where username='"+request.getParameter("e5")+"' ");
if(x!=0)
{

%>
<script>
alert("Staff Accepted");
window.open("viewStaff.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}



if(request.getParameter("reject")!=null){
try{
int x=stmt.executeUpdate("update registration set status='Rejected'  where username='"+request.getParameter("e5")+"' ");
if(x!=0)
{

%>
<script>
alert("Staff Rejected");
window.open("viewStaff.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}


if(request.getParameter("Delete")!=null){
try{
int x=stmt.executeUpdate("delete from student where id='"+request.getParameter("e6")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("viewStudents.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>

</body>
</html>
