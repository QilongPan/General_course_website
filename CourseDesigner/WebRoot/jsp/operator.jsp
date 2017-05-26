<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'operator.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="js/bootstrap.css" rel="stylesheet">
    <style type="text/css">
	    *{
		    margin:0px;
		    padding:0px;
		}
		.top{
			height:40px;
			width:100%;
			background:#09F;
			text-align:center;
			font-size:20px;
			font-family:"微软雅黑";
		}
		
		.contain{
			height:500px;
			width:100%;
			background:#C3C;
		}
		
		.containRight{
			height:500px;
			width:80%;
			float:left;
		}
		
		.containLeft{
			height:500px;
			width:20%;
			background:#0FF;
			float:left;
		}
		
		.containLeft ul li ul{
			display:none;
		}
		
		.containLeft ul li:hover ul{
			display:block;
		}
		
		.bottom{
			height:200px;
			width:100%;
		}
		
		.topRight{
			float:right;
			height:40px;
			width:100px;
		}
		
		.topRight ul li{
			float:right;
			list-style:none;
			margin-left:10px;
		}
		
		.topRight ul li a{
			text-decoration:none;
			font-family:"微软雅黑";
			font-size:13px;
			color:#000;
		}
		
		.secondDiv{
			height:30px;
			width:100%;
			background:#C03;
		}
		
		.right{
			float:left;
			height:100%;
			width:30%;
			color:#000;
		}
		
		.left{
			float:left;
			height:100%;
			width:70%;
			color:#000;
		}
		
		.leftTop{
			height:10%;
			width:100%;
			background:#6C0;
		}
		
		.leftBottom{
			height:80%;
			width:100%;
			background:
		}
		
		.leftBottom ul{
			text-align: center;
		}
		.leftBottom ul li{
			float:left;
			list-style:none;
			height:30px;
			width:125px;
			margin-left:20px;
			text-align: center;
		}
		
		
		.leftTop ul{
			float:right;
		}
		
		.leftTop ul li{
			float:left;
			margin-left:15px;
			list-style:none;
			text-decoration:none;
		}
		
		.leftCenter{
			height:10%;
			width:100%;
			background:#99F;
		}
		
		.right ul li{
			list-style:none;
			text-decoration:none;
		}
		
		.right ul li ul{
			display:none;
		}
		
		
		.right ul li:hover ul{
			display:block;
		}
		
	</style>
</head>

<body>

    <div class="top">
    
    	<span style="margin-top:20px;">课程网站后台管理系统</span>
    	
        <div class="topRight">
        	<ul>
            	<li><a href="#">退出</a></li>
                <li><a href="#">修改密码</a></li>
           	</ul>
        </div>
        
    </div>
    
    <div class="secondDiv">
    	<span style="font-size:15px;">欢迎您,<s:property value="#session.userName"/></span>
    </div>
    
    <div class="contain">
    	<div class="containLeft">
            <span>2016年6/23</span>
        	<ul>
            	<li>网站内容管理
                	<ul>
                    	<li><a href="#">留言管理</a></li>
                        <li><a href="#">文章管理</a></li>
                        <li><a href="#">审核文章</a></li>
                        <li><a href="#">栏目管理</a></li>
                    </ul>
                </li>
                <li>系统设置
                	<ul>
                    	<li><a href="#">权限管理</a></li>
                        <li><a href="#">模块管理</a></li>
                        <li><a href="#">角色分配</a></li>
                        <li><a href="#">人员管理</a></li>
                        <li><a href="#">角色管理</a></li>
                        <li><a href="#">默认功能设置</a></li>
                        <li><a href="#">首页信息设置</a></li>
                        <li><a href="#">码表管理</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        
        <div class="containRight">
        	<div class="right">
                <ul>
                    <li><a href="#">所有栏目</a>
                    	<ul>
                        	<li><a href="#">首页</a></li>
                            <li><a href="#">课程介绍</a></li>
                            <li><a href="#">教学团队</a></li>
                            <li><a href="#">课程建设</a></li>
                            <li><a href="#">课程资源</a></li>
                            <li><a href="#">问题与答疑</a></li>
                            <li><a href="#">课程研究</a></li>
                        </ul>
                       
                    </li>
                    
                </ul>
            </div>
            
            <div class="left">
            
            	<div class="leftTop"> 
                	<ul>
                    	<li><a href="#">新增</a></li>
                        <li><a href="#">多选删除</a></li>
                    </ul>
                </div>
           
                <div class="leftCenter">
                	<s:form name="operatorControl" >
                		<s:textfield name="articleThitle" label="文章标题"/>
                		<s:date name="startDate"/>到<s:date name="endDate"/>
                		<s:submit value="搜索"/>
                	</s:form>
                </div>
                
                <div class="leftBottom">
                <s:action name="viewArtical" executeResult="false" namespace="/login"></s:action>
               		 <table>
               		 	<tr>
               		 		<td>文章标题</td>
               		 		<td>作者</td>
               		 		<td>栏目名称</td>
               		 		<td>创建日期</td>
               		 		<td>是否置顶</td>
               		 		<td>操作</td>
               		 	</tr>             	
                			<s:iterator value="#request.allArticleList">
                				<tr>
                					<td><s:property value="articleTitle"/></td>
                					<td><s:property value="articleAuthor"/></td>
                					<td><s:property value="columnName"/></td>
                					<td><s:property value="createDate"/></td>
                					<td><s:property value="isStick"/></td>
                					<td>
                						<a href="/CourseDesigner/login/selectArticle.action?id=<s:property value="id"/>">查看</a>
                						<a href="/CourseDesigner/login/selectArticleById.action?id=<s:property value="id"/>">编辑</a>
                						<a href="/CourseDesigner/login/deleteArticle.action?id=<s:property value="id"/>">删除</a>
                					</td>
                				</tr>
                			</s:iterator>
                		</table>
                </div>
                
            </div>
            
        </div>
    </div>
    
    <div class="bottom">
    	<span>版本信息</span>
    </div>
    
</body>
</html>