<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'courseAna.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <style type="text/css">
* {
	padding: 0px;
	margin: 0px;
}

.head {
	width: 100%;
	height: 225px;
	background: url(image/background1.png);
	background-repeat: repeat-x;
}

.daoHang {
	height: 30px;
	width: 70%;
	margin: 0 auto;
	margin-top: 35px;
}

#apDiv1 {
	position: absolute;
	width: 200px;
	height: 60px;
	z-index: 1;
	top: 15px;
	left: 291px;
}

#changeSkin img {
	width: 18px;
	height: 18px;
	text-indent: -9999px;
	overflow: hidden;
	margin-top: 4px;
	margin-right: 10px;
	float: right;
	display: block;
}

#skin li {
	width: 15px; 
	height: 15px; 
	text-indent: -9999px; 
	overflow: hidden; 
	margin-top: 4px; 
	margin-right: 10px; float: right; 		
	display: block; 
	cursor: pointer;
	background-image: url(image/theme.png);;
}
#changeSkin img {
	width: 18px; 
	height: 18px; 
	text-indent: -9999px; 
	overflow: hidden; 
	margin-top: 4px; 
	margin-right: 10px; 
	float: right; 
	display: block;
}

#skin li#Red {
	background-position: 91px 0px;
}

#skin li.selected#Red {
	background-position: 91px 16px;
}

#skin li#Default {
	background-position: 16px 0px; 
	width: 16px;
}

#skin li.selected#Default {
	background-position: 16px 16px; 
	width: 16px;
}

#skin li#Green {
	background-position: 76px 0px;
}

#skin li.selected#Green {
	background-position: 76px 16px;
}

#skin li#Random {
	background: url(image/skin.png) no-repeat; 
	width: 22px; 
	height: 22px;
}

#skin li.selected#Random {
	background:  url(image/skin.png) no-repeat; 
	width: 22px; 
	height: 22px;
}

.input_style {
	padding: 0px;
	border: 1px solid rgb(127, 127, 127);
	border-image: none;
	width: 180px;
	height: 27px;
	color: rgb(173, 173, 173);
	line-height: 20px;
	text-indent: 4px;
	font-size: 12px;
	float: right;
	border-radius: 5px;
}

#nav {
	background: url(image/background2.png) repeat-x;
	list-style: none;
	height: 30px;
	position: relative;
	float: left;
	border-radius: 5px;
}

#nav>li {
	text-align: center;
	line-height: 31px;
	font-size: 16px;
	font-weight: bold;
	float: left;
	position: relative;
	margin-right: 45px;
}

#nav li a {
	padding: 0px 12px;
	text-align: center;
	color: white;
	font-weight: bold;
	text-decoration: none;
	display: block;
}

#nav li a:hover {
	background: #CF0;
	text-decoration: none;
}
}
</style>

</head>

<body>
	<div class="head">
		<div style="height:160px; width:70%; margin:0 auto">
			<div style="float:left">
				<img src="image/logo.png" alt="logo" width="80" height="80" />
				<div id="apDiv1">
					<h1 style="color:#FFF">重庆理工大学</h1>
				</div>
				<h2 style="color:#FFF; margin-left:15px">数据结构精品课程</h2>
			</div>
			<div style="float:right; width:300px">
				<div id="changeSkin">
					<ul id="skin">
						<li id="Red" title="选择红色皮肤">红</li>
						<li id="Green" title="选择绿色皮肤">绿</li>
						<li id="Default" title="选择蓝色皮肤">默认</li>
						<li id="Random" title="选择随机皮肤">随机</li>
					</ul>
				</div>
				<div>
					<img src="image/pincture.jpg" width="235" height="47"
						style="height:80px; width:100%" />
				</div>
				<div style="margin-top:10px">
					<input style="float: right;" type="button" value="搜索"/>
					<input type="text" placeholder="请输入搜索内容" class="input_style"
						id="searchComment" /> <span  style="color:#FF0">全站搜索：</span>
				</div>
			</div>
		</div>

		<div class="daoHang">
			<ul id="nav">
				<li><a href="frontJsp/index.jsp">首页</a></li>
				<li><a href="frontJsp/courseIntroduce.jsp">课程介绍</a></li>
				<li><a href="frontJsp/teacherTeam.jsp">教学团队</a></li>
				<li><a href="frontJsp/courseSource.jsp">课程资源</a></li>
				<li><a href="frontJsp/courseBuilding.jsp">课程建设</a></li>
				<li><a href="frontJsp/solution.jsp">问题与答辩</a></li>
				<li><a href="frontJsp/courseAna.jsp">课程研究</a></li>
				<li style="width:180px;"></li>
			</ul>
		</div>

	</div>
	<!--中间部分-->
	<div style="clear:both">
		<div style="width:70%; height:900px; margin:20 auto auto auto">
			<iframe src="frontJsp/six.jsp"
				style=" width:100%; height:100%; margin-top:-15px; border:0"></iframe>
		</div>
	</div>
	<!--底部-->
	<div style="margin-top:-18px">
		<hr size="8"
			style="background:url(image/background4.png); background-repeat:repeat-x" />
		<div
			style=" clear:both; height:80px; background:url(image/background3.png); margin-top:-10px">
			<center>
				<pre style="color:#FFF">        
重庆理工大学计算机科学与工程学院版权所有
联系地址：重庆市巴南区红光大道69号(邮编：40054) 联系电话：(023)68667334
   </pre>
			</center>

		</div>
	</div>
</body>
</html>
