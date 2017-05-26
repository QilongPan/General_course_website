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
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    	 
	<style type="text/css">
		 body{
		     padding: 0px;
		     margin: 0px;
		     line-height: 1.6;
		     font-family: "Helvetica Neue","Hiragino Sans GB","Microsoft YaHei","\9ED1\4F53",Arial,sans-serif !important;
		     color: #222;
		     font-size: 14px;
		 }
		
		 input{
		     transition: all 0.30s ease-in-out;
		     -webkit-transition: all 0.30s ease-in-out;
		     -moz-transition: all 0.30s ease-in-out;
		     border: 1px solid #ccc;
		     border-radius: 4px;
		     outline: none;
		     padding-left:10px;
		     height: 34px;
		     width: 200px;
		 }
		 
		 input:focus{
		    border:1px solid rgb(55, 182, 238);;
		    box-shadow: 0 0 2px rgb(33, 162, 238);
		    -webkit-box-shadow: 0 0 2px rgb(33, 162, 238);
		    -moz-box-shadow: 0 0 2px rgb(33, 162, 238);
		 }
		 
		.div_from_aoto{
		    margin-left: auto;
		    margin-right: auto;
		    padding-left:10px;
		    margin-top: 30px;
		}
		
		.laber_from{
		    width: 100px;
		    float: left;
		    line-height: 35px;
		    color: #222;
		    font-weight: normal;
		}
		
		.control-group{
		    padding-bottom: 10px;
		}
		
		
		.input_select{
		    width: 100px;
		    height: 30px;
		    cursor: pointer;
		}
		
	</style>
	
  </head>
   <body>
  	<div class="div_from_aoto" style="width:500px;">
  		<s:form action="checkLogin" namespace="/login">
  			<s:action name="getCheckCode" executeResult="false" namespace="/login">
		   	</s:action>
		   	<div class="control-group">
		   		<s:textfield name="userName" label="用户名" placeholder=" 请输入用户名"/>
		   	</div>
		   	 <div class="control-group">
           		<s:password name="password" label="密码" placeholder=" 请输入密码"/>
        	</div>
        	<div >
           		<s:textfield name="checkCode" label="验证码" placeholder="请输入验证码" />
				<s:textfield name="checkCode2" value="%{#request.checkCode2}" style="width:80px;" readonly="true" disable="true"/>
		    	<s:submit value="登录"/>
        	</div>
  		</s:form>
  	</div>
  </body>
 
 	
</html>
