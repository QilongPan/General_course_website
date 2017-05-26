<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'roleAssignment.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <link rel="stylesheet" href="css/index.css" type="text/css" media="screen" />

  <script type="text/javascript" src="js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="js/tendina.min.js"></script>
    <script type="text/javascript" src="js/common.js"></script>

</head>
<body>
<!--顶部-->
<div class="layout_top_header">
    <div style="float: left"><span style="font-size: 16px;line-height: 45px;padding-left: 20px;color: #8d8d8d">网站后台管理系统</h1></span></div>
    <div id="ad_setting" class="ad_setting">
        <a class="ad_setting_a" href="javascript:; ">
            <i class="icon-user glyph-icon" style="font-size: 20px"></i>
            <span>管理员</span>
            <i class="icon-chevron-down glyph-icon"></i>
        </a>
        <ul class="dropdown-menu-uu" style="display: none" id="ad_setting_ul">
            <li class="ad_setting_ul_li"> <a href="javascript:;"><i class="icon-user glyph-icon"></i> 个人中心 </a> </li>
            <li class="ad_setting_ul_li"> <a href="javascript:;"><i class="icon-cog glyph-icon"></i> 设置 </a> </li>
            <li class="ad_setting_ul_li"> <a href="javascript:;"><i class="icon-signout glyph-icon"></i> <span class="font-bold">退出</span> </a> </li>
        </ul>
    </div>
</div>
<!--顶部结束-->
<!--菜单-->
<div class="layout_left_menu">
    <ul id="menu">
        <li class="childUlLi">
            <a href="main.html"  target="menuFrame"><i class="glyph-icon icon-home"></i>网站内容管理</a>
            <ul>
                <li><a  target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>留言管理</a></li>
                <li><a href="jsp/articleManage.jsp" target="_parent"><i class="glyph-icon icon-chevron-right"></i>文章管理</a></li>
                <li><a target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>审核文章</a></li>
                <li><a target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>栏目管理</a></li>

            </ul>
        </li>
        <li class="childUlLi">
            <a href="#"> <i class="glyph-icon  icon-location-arrow"></i>系统设置</a>
            <ul>
                <li><a href="meunbox.html" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>权限管理</a></li>
                <li><a href="meunbox_add.html" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>模块管理</a></li>
                <li><a href="jsp/roleAssignment.jsp" target="_parent"><i class="glyph-icon icon-chevron-right"></i>角色分配</a></li>
                    <li><a target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>人员管理</a></li>
                    <li><a target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>角色管理</a></li>
                    <li><a target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>默认功能设置</a></li>
                    <li><a target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>首页信息设置</a></li>
                    <li><a target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>码表管理</a></li>
            </ul>
        </li>
    </ul>
</div>
<!--菜单-->
<div id="layout_right_content" class="layout_right_content">

    <div class="route_bg">

        <a><i class="glyph-icon icon-chevron-right"></i>角色分配管理</a>
    </div>

            <iframe id="menuFrame" name="menuFrame" src="jsp/roleAssignment_one.jsp"
                    scrolling="yes" frameborder="no" width="100%" height="100%"></iframe>

</div>
<div class="">
    <p>Copyright © 2014 - XXXX科技</p>
</div>
</body>
</html>