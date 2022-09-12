<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="refresh" content="20">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	background-color: #330000;
}

.topnav {
  overflow: hidden;
  background-image: linear-gradient(grey,black,grey);
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
.style1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 24px;
}
.style2 {
	color: #04AA6D;
	font-style: italic;
}
.style3 {
	color: #FFFF00;
	font-size: 36px;
}
body,td,th {
	color: #FFFFFF;
}
.style4 {
	color: #000066;
	font-weight: bold;
	font-size: 24px;
}
.style5 {font-size: 24px}
.style6 {
	color: #FF0000;
	font-weight: bold;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
<body>
<%@  include file="hometabs.html" %>
<%@ page import="java.util.*" %>
<%@  page import=" com.sun.speech.freetts.Voice"%>
<%@  page import= "com.sun.speech.freetts.VoiceManager"%>
<%@  page import ="java.text.DateFormat"%>
<%@  page import ="java.text.SimpleDateFormat"%>
<%@  page import ="java.util.Calendar"%>
<%@  page import ="java.util.Date"%>

<%@  include file="db.jsp" %>


    <p class="style1 style2 style3">Smart Notice Board  </p>

<div style="background-color:#CCCCCC; color:#000099; border-radius:20px; width:100%; height:30%">
  <p align="center" class="style4">Admin Notice Board</p>
  <div align="center">
    <% 
  rst=stmt.executeQuery("select * from adminnotice order by id desc ");
  if(rst.next()){
    %>
  </div>
  <p align="center" class="style5">Subject:<%= rst.getString(1) %></p>
  <marquee><p class="style6"> <%= rst.getString(2) %> </p>
  </marquee>
  <% } %>
</div>

<div style="background-color:#CCCCCC; color:#000099; border-radius:20px; width:100%; height:30%">
  <p align="center" class="style4">Staff Notice Board</p>
  <div align="center">
    <% 
  rst=stmt.executeQuery("select * from staffnotice   order by id desc");
  if(rst.next()){
    %>
  </div>
  <p align="center" class="style5">Subject:<%= rst.getString(1) %></p>
  <marquee><p class="style6"> <%= rst.getString(2) %> </p>
  </marquee>
  <% } %>
</div>






<% 








              
         rst=stmt.executeQuery("select * from adminnotice order by id desc");      
             if(rst.next()){
                   // botSay("Hi Students  ");
					// botSay("Subject      "+rst.getString(1));
					 // botSay("Notice is    "+rst.getString(2));
					 //  botSay("Thank you");
					
					//out.print("Chatbot Says:"+rst.getString(1));
					
					
                }
       


 
 %>


<%!   
 
 public void botSay(String s){
       String VOICENAME="kevin16";
       // txtEnter.append("AI: " + s + "\n");
         Voice voice;
        VoiceManager vm=VoiceManager.getInstance();
        voice=vm.getVoice(VOICENAME);
        voice.allocate();
        try{
           
           
             VOICENAME = s;
           
            voice.speak(VOICENAME);
        }catch(Exception e){
            
        }
    }
 
  %>
</body>
</html>
