<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminManage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link rel="stylesheet" href="css/index.css" type="text/css" media="screen" />
	<style type="text/css">
		*{
    padding: 0px;
    margin: 0px;
}
@font-face {
    font-family:FontAwesome;src:url(../utilLib/fonts/font_awesome/fontawesome-webfontf77b.eot?v=3.2.1);
    src:url(../utilLib/fonts/font_awesome/fontawesome-webfontd41d.eot?#iefix&v=3.2.1)
    format('embedded-opentype'),url(../utilLib/fonts/font_awesome/fontawesome-webfontf77b.woff?v=3.2.1)
    format('woff'),url(../utilLib/fonts/font_awesome/fontawesome-webfontf77b.ttf?v=3.2.1)
    format('truetype'),url(../utilLib/fonts/font_awesome/fontawesome-webfont.svg#fontawesomeregular?v=3.2.1)
    format('svg');font-weight:400;font-style:normal
}
.icon-chevron-right:before{content:"\f054";padding-left:10px;}
.icon-chevron-down:before {content: "\f078"}
.icon-user:before {content: "\f007"}
.icon-gear:before,.icon-cog:before {content: "\f013"}
.icon-signout:before {content: "\f08b"}
.icon-chevron-down:before{content:"\f078"}
.icon-home:before{content:"\f015";font-size: 16px}
.icon-reorder:before{content:"\f0c9";font-size: 16px}
.icon-signal:before{content:"\f012";font-size: 16px}
.icon-location-arrow:before{content:"\f124";font-size: 16px}
.glyph-icon{
    vertical-align:middle;
    font-family: FontAwesome;font-weight: 400;font-size:12px;font-style: normal;padding-top:5px;padding-right: 5px;
}
html,body{height:100%;overflow:hidden;}
body{padding: 0px;
    margin: 0px;
    line-height: 1.6;
    font-family: "Helvetica Neue","Hiragino Sans GB","Microsoft YaHei","\9ED1\4F53",Arial,sans-serif !important;
    color: #222;
    font-size: 14px;
    /*background-color: #e7e8eb;*/
}
/*顶部div*/
.layout_top_header{
    background-color: #353636;
    width: 100%;
    height: 50px;
}
/*管理员设置*/
.ad_setting{
    cursor:pointer;
    border-left:1px solid #424242;
    width: 130px;
    height: 100%;
    float: right;
    line-height:50px;
}
.ad_setting:hover{
    text-decoration: none;
    background: #3E3E3E;
}
.ad_setting_a{
    text-align: center;
    font-size:13px;
    color: rgba(255,255,255,.5);
    /*color: #888;*/
    text-decoration: none;
    display: block;
}
.ad_setting_a:hover{
    color: #CCCCCC !important;
    text-decoration: none;
}
.ad_setting_a span{
    padding-right: 5px;
    vertical-align:middle;
}
.dropdown-menu-uu:after{
    position: absolute;
    top: -6px;
    right: 8px;
    left: auto;
    display: inline-block;
    border-right: 6px solid transparent;
    border-bottom: 6px solid #fff;
    border-left: 6px solid transparent;
    content: '';
}
#ad_setting_ul{
    list-style: none;
    font-size: 12px !important;
    padding-top: 5px;
    padding-bottom: 5px;
    margin-top: 1px;
    background: #fff;
    border-radius: 5px;
    position: absolute;
    right: 20px;
    top: 50px;
    left: auto;
    z-index: 1000;
    min-width: 160px;
    border-color: #b8b8b8;
    box-shadow: 0 3px 6px 0 rgba(0,0,0,.25);
    border-style: solid;
    border-width: 1px;

}
#ad_setting_ul li{
    padding-left: 30px;
    line-height: 30px !important;
}

#ad_setting_ul li:hover{
    background: black;
    border-radius: 5px;
    color: white;
}
.ad_setting_ul li{
    color: #000000 !important;
}
.ad_setting_ul_li a{
    color: #000000 ;
    text-decoration: none;
}
.ad_setting_ul_li_a{
    color: #fff !important;
    text-decoration: none !important;
}

/*菜单*/
.layout_left_menu{
    position:absolute;
    float: left;
    min-height: 90%;
    box-shadow: 0 0 10px #BDBDBD;
    width: 200px;
    background: #f7f5fa;
    margin-top: 5px;
    margin-left: 5px;
    padding-left:5px;
    border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
}
#menu{
    padding: 10px;
    list-style: none;
    line-height: 35px;
    border-radius: 5px;
    color: #888 !important;
}
#menu ul{
    list-style: none;
    background: rgba(255,255,255,.5);
}
#menu li{
    color: #888;
}
.selected{
     background: #eee;
     border-color: #d5d5d5;
     color: #000;
     border-bottom-right-radius: 0;
     border-bottom-left-radius: 0;
 }
.selected>a{
    border: transparent solid 1px;
    border-radius: 3px;
    background: #eee;
    border-color: #d5d5d5;
    color: #000!important;
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
}
#menu a{
    text-decoration: none;
}
#menu a:hover{
    text-decoration: none;
}
#menu>li>a {
    font-weight: 700;

    display: block;
    color:#888;
    font-family: "Helvetica Neue","Hiragino Sans GB","Microsoft YaHei","\9ED1\4F53",Arial,sans-serif;

}
#menu li ul{
    background: #fff;
    border: #eee solid 1px;
    font-size: 12px;
    color:#8d8d8d;
}
.childUlLi ul{
    margin-bottom: 5px;
    line-height: 30px;
}
.childUlLi a{
    border-radius: 3px;
}
.childUlLi a:hover{
    background: #eee;
    color: #000 !important;
}
.childUlLi a i{
    opacity: .5;
    padding-left: 10px;
    padding-right: 10px;
}
.childUlLi ul a{
    color: #888;
    display: block;
}
.childUlLi ul a:hover{
    background: #eee;
    color: #000;
}

/*main内容显示*/
.layout_right_content{
    margin-left: 210px;
    padding-left: 10px;
    padding-top: 5px;
    height: 90%;
    min-height: 90%;
    overflow:auto;
}
.route_bg{
    background-color: #E7E7E7;
    border-radius: 4px;
    padding: 5px;
    margin-right: 5px;
}
.route_bg i{
    color: #ccc;
}
.route_bg a{
    font-size: 12px;
    color: #666;
    text-decoration: none;
}
.route_bg a:hover{
    color: #888;
    text-decoration: none;

}
.mian_content{
    position: relative;
    min-height: 93%;
    /*background: #f5f5f5;*/
    margin-top: 10px;
    margin-right: 5px;
}
#page_content{
    position: absolute;
    width: 100%;
    height: 100%;

}

/*底部版权*/
.layout_footer{
    position: absolute;
    bottom: 0px;
    font-size: 12px;
    background: #ffffff;
    text-align: center;
    border:1px solid #eee;
    width: 100%;
    height: 30px;
}
		
	</style>
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
                    <li><a  target="_parent" href="jsp/articleManage.jsp" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>文章管理</a></li>
                    <li><a  target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>审核文章</a></li>
                    <li><a  target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>栏目管理</a></li>

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
            <a href="#">主页</a><i class="glyph-icon icon-chevron-right"></i>
            <a href="#">菜单管理</a>
        </div>
        <div class="mian_content">
            <div id="page_content">
                <iframe id="menuFrame" name="menuFrame" src="" style="overflow:visible;"
                        scrolling="yes" frameborder="no" width="100%" height="100%"></iframe>
            </div>
        </div>
    </div>
    <div class="layout_footer">
        <p>Copyright © 2014 - XXXX科技</p>
    </div>
</body>
</html>