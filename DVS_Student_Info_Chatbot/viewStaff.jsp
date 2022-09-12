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
  
  Pending and Rejected Staff Details</p>
<table width="1076" border="0" align="center">
  <tr bgcolor="#999999">
    <td width="193"><strong>Name</strong></td>
    <td width="142"><strong>Last Name </strong></td>
    <td width="128"><strong>Designation</strong></td>
    
    <td width="94"><strong>phone</strong></td>
    <td width="94"><strong>UsreName</strong></td>
    <td width="141"><strong>Password</strong></td>
    <td width="148"><strong>Department</strong></td>
	 <td width="148"><strong>Status</strong></td>
     <td width="148">&nbsp;</td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from registration where status='pending' or status='Rejected'");
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
    <td><span class="style3 style1">
      <input name="e5" type="text" value="<%= rst.getString(5) %>" size="5"/>
    </span></td>
    <td><span class="style3 style1"><input name="e6" type="text" readonly="true" value="<%= rst.getString(6) %>"/></span></td>
    <td><span >
    <input name="e6" type="text" value="<%= rst.getString(7) %>" size="5" readonly="true" />
    </span></td>
	 <td><input name="e62" type="text" value="<%= rst.getString(8) %>" size="5" readonly="true" /></td>
    <td>
      <input class="button" type="submit" name="delete" value="Delete" />
	  <input class="button" type="submit" name="accept" value="Accept" />
	  <input class="button" type="submit" name="reject" value="Reject" />
	  </td>
  </tr>
  </form>
  <% } %>
</table>

<p align="center" style="color:blue">
  
  Staff Details</p>
<table width="1076" border="0" align="center">
  <tr bgcolor="#999999">
    <td><strong>Name</strong></td>
    <td><strong>Last Name </strong></td>
    <td><strong>Designation</strong></td>
    <td><strong>phone</strong></td>
    <td><strong>UserName</strong></td>
    <td><strong>Password</strong></td>
    <td><strong>Department</strong></td>
    <td><strong>Status</strong></td>
    <td>&nbsp;</td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from registration where status='Accepted'");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="#003399">
    <td width="193"><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>" size="15"/>
    </span></td>
    <td width="142"><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>" size="15"/>
    </span></td>
    <td width="128"><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>"/></span></td>
    <td width="94"><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>" size="10"/>
    </span></td>
    <td width="94"><span class="style3 style1">
      <input name="e5" type="text" value="<%= rst.getString(5) %>" size="5"/>
    </span></td>
    <td width="141"><span class="style3 style1"><input name="e6" type="text" readonly="true" value="<%= rst.getString(6) %>"/></span></td>
    <td width="148"><span >
    <input name="e6" type="text" value="<%= rst.getString(7) %>" size="5" readonly="true" />
    </span></td>
	 <td width="148"><input name="e63" type="text" value="<%= rst.getString(8) %>" size="5" readonly="true" /></td>
    <td width="148">
      <input class="button" type="submit" name="delete" value="Delete" />
	  <input class="button" type="submit" name="accept" value="Accept" />
	  <input class="button" type="submit" name="reject" value="Reject" />	  </td>
  </tr>
  </form>
  <% } %>
</table>


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
