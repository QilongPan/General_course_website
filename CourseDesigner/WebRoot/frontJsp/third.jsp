<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'third.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
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
.textbox{
	float:left;
	border:1px solid #999;
	width:75%;
	height:20px;
	margin-top:4px;
	margin-left:10px;
}
</style>
</head>

<body>
<div style="height:700px">
<!--左边-->
<div style=" width:35%; height:100%; float:left">

    <div style=" width:80%; margin:0 auto">
    
       <ul id="nav">
       	   <li style="background:#FFF"><form style="background:#CCC; height:35px">
     <input type="text" placeholder="请输入搜索标题" name="title_search" class="textbox"/><input type="button" value="搜索" style=" background:#F00; color:#FFF; width:20%; height:30px" />
    </form></li>
           <li style="background-color:#F00; color:#FFF">课程介绍</li>
           <li><a href="frontJsp/second_one.jsp">课程简介</a></li>
           <li><a href="frontJsp/second_two.jsp">教学方法</a></li>
           <li><a href="frontJsp/second_three.jsp">课程安排</a></li>
           <li><a href="frontJsp/second_four.jsp">课程大纲</a></li>
           <li><a href="frontJsp/second_five.jsp">课程理念与目标</a></li>
           <li><a href="frontJsp/second_six.jsp">课程动态</a></li>
            <li></li>
       </ul>
    </div>
</div>
<!--右边;-->

<div style=" width:60%; height:700px; float:right">
    <div style="clear:both; height:20px; margin-top:10px">
            <h3 style=" color:#F00; float:left; margin-top:0px"><img src="img/tv.png" width="17" height="20" />课程动态</h3>
          <p style="float:right; margin-top:0px; color:#990000">课程动态</p>
            <p style="float:right; margin-top:0px">课程介绍></p>
          <p style="float:right; margin-top:0px; color:#F00">您的当前位置：</p>
          <div style="float:left; width:100%; margin-top:-28px">
            <hr color="#F00"/>
          </div>
    </div>
      <div style=" float:left;height:640px; margin-top:10px; width:100%">
           <center>
               <form>
                   <input type="button" value="首页" style="width:40px; height:30px; background:#FFF"/>
                   <input type="button" value="上页" style="width:40px; height:30px; background:#FFF"/>
                   <input type="text" value="1" style="width:20px; height:25px; background:#FFF"/>
                   <input type="button" value="下页" style="width:40px; height:30px; background:#FFF"/>
                   <input type="button" value="尾页" style="width:40px; height:30px; background:#FFF"/>
               </form>
           </center>
      </div>  
</div>
	
</div>
</body>
</html>
