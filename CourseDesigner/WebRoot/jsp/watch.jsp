<%@ page language="java" import="java.util.*,user.Article" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'watch.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">

	*{
		margin:0px;
		padding:0px;
	}
	
	.contain{
		margin:0 auto;
		height:300px;
		width:500px;
		background:#003;
		margin-top:30px;
		padding-bottom:10px;
	}
	
	label{
		color:#0C0; 
		font-size:18px;
		font-family:"微软雅黑";
		margin-left:60px;
	}
	
	</style>
  </head>
  
  <body>
    <div class="contain">
    	 <center><h3 style="color:#F00; margin-bottom:15px">信息查看</h3></center>
    	<s:form>
	    	<s:textfield style="margin-left:30px; border-radius:5px; width:200px; height:35px;font-size:15px;text-align:center;line-height:35px;margin-bottom:15px;" label="文章标题" name="articleTitle" value="%{#session.article.articleTitle}" readonly="true"/> 
		   	<s:textfield style="margin-left:30px; border-radius:5px; width:200px; height:35px;font-size:15px;text-align:center;line-height:35px;margin-bottom:15px;" label="作者"  name="articleAuthor"  value="%{#session.article.articleAuthor}" readonly="true"/>
		   	<s:textfield style="margin-left:30px; border-radius:5px; width:200px; height:35px;font-size:15px;text-align:center;line-height:35px;margin-bottom:15px;" label="栏目名称" name="columnName"   value="%{#session.article.columnName}" readonly="true"/>
		   	<s:textfield style="margin-left:30px; border-radius:5px; width:200px; height:35px;font-size:15px;text-align:center;line-height:35px;margin-bottom:15px;" label ="时间" name="createDate"     value="%{#session.article.createDate}" readonly="true"/>
		   	<s:textfield style="margin-left:30px; border-radius:5px; width:200px; height:35px;font-size:15px;text-align:center;line-height:35px;margin-bottom:15px;" label="是否置顶 " name="isStick"      value="%{#session.article.isStick}" readonly="true"/>
    	</s:form>
    </div>
  </body>
</html>
