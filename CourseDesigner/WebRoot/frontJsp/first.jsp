<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'first.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<!--上-->
<div style="width:100%; height:30%">
<!--左-->
<div style=" width:55%; height:100%; float:left">
        <h3 style="float:left; margin-top:-2px"><img src="" width="8" height="22"/>课程简介</h3>
        <p style="float:left;margin-top:6px; margin-left:5px;color:#999">Introduce</p>
    <div style=" clear:both">
   		<hr />
    	<p>&nbsp;&nbsp;数据的物理结构是数据结构在计算机中的表示（又称映像），它包括数据元素的机内表示和关系的机内表示。由于具体实现的方法有顺序、链接、索引、散列等多种，所以，一种数据结构可表示成一种或多种存储结构。数据元素的机内表示（映像方法）： 用二进制位（bit）的位串表示数据元素。通常称这种位串为节点（node）。当数据元素有若干个数据项组成时，位串中与个数据项对应的子位串称为数据域（data field）。因此，节点是数据元素的机内表示（或机内映像）...</p>
    </div>

</div>

<!--右-->
<div style=" width:40%; height:10%; float:right">
        <h3 style="float:left; margin-top:-2px"><img src="" width="8" height="22"/>课程负责人</h3>
        <p style="float:left;margin-top:6px; margin-left:5px;color:#999">Principal</p>
    <div style=" clear:both">
    	<hr />
    	<p>&nbsp;&nbsp;数据的物理结构是数据结构在计算机中的表示（又称映像），它包括数据元素的机内表示和关系的机内表示。由于具体实现的方法有顺序、链接、索引、散列等多种，所以，一种数据结构可表示成一种或多种存储结构。数据元素的机内表示（映像方法）： 用二进制位（bit）的位串表示数据元素。通常称这种位串为节点（node）...</p>
    </div>
</div>
</div>

<!--中-->
<div style="width:100%; height:30%">
<!--左-->
<div style=" width:55%; height:100%; float:left">
        <h3 style="float:left; margin-top:-2px"><img src="" width="8" height="22"/>课程动态</h3>
        <p style="float:left;margin-top:6px; margin-left:5px;color:#999">Dynamic&nbsp;State</p>
        <p style=" float:right; margin-top:6px;"><a href="#" style="color:#999; text-decoration:none">MORE</a></p>
   <div style=" clear:both">
    	<hr />
        <p style="float:left"><img src="" width="8" height="23" />数据结构设计大赛</p>
        <p style="float:right">2016/6/23</p>
    </div>
    <div style=" clear:both">
        <p style="float:left"><img src="" width="8" height="23" />数据结构设计大赛</p>
        <p style="float:right">2016/6/23</p>
    </div>

</div>

<!--右-->
<div style=" width:40%; height:10%; float:right">
       <h3 style="float:left; margin-top:-2px"><img src="" width="8" height="22"/>教学资源</h3>
       <p style="float:left;margin-top:6px; margin-left:5px;color:#999">Resource</p>
    <div style=" clear:both">
       <hr />
       <a href="#"><img src="image/kejian.png" width="40%" /></a>
       <a href="#"><img src="image/shipin.png" width="40%" /></a>
    </div>
</div>
</div>

<!--下-->
<div style="width:100%; height:30%; clear:both">
        <h3 style="float:left; margin-top:-2px"><img src="" width="8" height="22"/>课程组成员</h3>
        <p style="float:left;margin-top:6px; margin-left:5px;color:#999">Members</p>
    <div style=" clear:both">
   		<hr />
    	<div style="width:15%; height:100%; float:left"> <a href="#">
        <img src="image/a1.png"/></a>
        </div>
       <div style="width:15%; height:100%; float:left; margin-left:1%">
       <a href="#"> <img src="image/a1.png"/></a>
        </div>
      <div style="width:15%; height:100%; float:left; margin-left:1%">
       <a href="#">   <img src="image/a1.png"/></a>
        </div>
      <div style="width:15%; height:100%; float:left; margin-left:1%">
       <a href="#"> <img src="image/a1.png"/></a>
        </div>
      <div style="width:15%; height:100%; float:left; margin-left:1%">
       <a href="#"> <img src="image/a1.png"/></a>
        </div>
      <div style="width:15%; height:100%; float:left; margin-left:1%">
       <a href="#">  <img src="image/a1.png"/></a>
        </div>
  </div>
</div>
<div style="height:3%; width:100%; clear:both">
<img src="image/lianjie.png" height="20px" width="20px" />友情链接：<a href="#" style=" color:#000;text-decoration:none">重庆理工大学</a><a href="" style=" color:#000;text-decoration:none; margin-left:20px">百度</a>
</div>
</body>
</html>

