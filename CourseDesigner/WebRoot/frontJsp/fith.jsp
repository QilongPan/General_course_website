<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fith.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body{
	margin-top:-20px;
}
*{
	maring:0px;
	padding:0px;
}
#nav{
	list-style:none;
	height:100%;
}
ul li{
	background:#CCC;
    text-align: center; 
	line-height: 31px; 
	font-size: 16px; 
	font-weight: bold;
	position: relative;
	margin-left:-50px;
	padding:8px;
}
ul li:hover{
	background:#CF0; 
}
#nav a{
	color:#000;
	text-decoration:none;
}
</style>
</head>

<body>
<div style="height:700px ;">
<!--左边-->
<div style=" width:35%; height:100%; float:left">
    <div style=" width:80%; margin:0 auto">
       <ul id="nav">
           <li style="background-color:#F00; color:#FFF">问题与答辩</li>
           <li><a href="frontJsp/fith.jsp">在线答疑</a></li>
           <li><a href="frontJsp/fith_one.jsp">问题公布</a></li>
            <li></li>
       </ul>
    </div>
</div>
<!--右边;-->

<div style=" width:60%; height:700px; float:right">
    <div style="clear:both; height:20px; margin-top:30px">
            <h3 style=" color:#F00; float:left; margin-top:0px"><img src="img/tv.png" width="17" height="20" />问题与答辩</h3>
          <p style="float:right; margin-top:0px; color:#990000">在线答疑</p>
            <p style="float:right; margin-top:0px">问题与答辩</p>
          <p style="float:right; margin-top:0px; color:#F00">您的当前位置：</p>
          <div style="float:left; width:100%; margin-top:-28px">
            <hr color="#F00"/>
          </div>
    </div>
      <div style=" float:left;height:640px;width:100%">
   		在线答疑
      </div>  
</div>
	
</div>
</body>
</html>
