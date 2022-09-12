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
  
  View Admin  Notices</p>
<table width="872" border="0" align="center">
  <tr bgcolor="#999999">
    <td width="193"><strong>Subject</strong></td>
    <td width="142"><strong>Matter</strong></td>
    <td width="128"><strong>Date</strong></td>
    
   
    <td width="148"><strong>ID</strong></td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from adminnotice ");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="#003399">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>" size="15"/>
    </span></td>
    <td><span class="style3 style1">
    <textarea name="e2" cols="30"><%= rst.getString(2) %></textarea>
    </span></td>
    <td><span class="style3 style1">
      <input name="e3" type="text" value="<%= rst.getString(3) %>" size="30" />
    </span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>" size="10"/>
    </span></td>
   
   
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


if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from registration where username='"+request.getParameter("e5")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("viewStaff.jsp","_self");
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
