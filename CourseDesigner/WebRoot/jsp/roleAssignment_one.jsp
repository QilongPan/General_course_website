<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'roleAssignment_one.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	  <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/stylesheet1.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">



    <!-- Le fav and touch icons -->


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <![endif]-->
    <!--图标样式-->


    <!--主要样式-->
    <link rel="stylesheet" type="text/css" href="css/style.css" />
	<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Collapse this branch');
            $('.tree li.parent_li > span').on('click', function (e) {
                var children = $(this).parent('li.parent_li').find(' > ul > li');
                if (children.is(":visible")) {
                    children.hide('fast');
                    $(this).attr('title', 'Expand this branch').find(' > i').addClass('icon-plus-sign').removeClass('icon-minus-sign');
                } else {
                    children.show('fast');
                    $(this).attr('title', 'Collapse this branch').find(' > i').addClass('icon-minus-sign').removeClass('icon-plus-sign');
                }
                e.stopPropagation();
            });
        });
    </script>
    <style type="text/css">
        .tree{ width:200px;
            height:500px;

            float:left;

            padding:0px;
            border:0px;
            border-radius:0px;}
        .table th, .table td {
            padding: 15.5px;
            line-height: 20px;
            text-align: left;
            vertical-align: top;
            border-top: 1px solid #dedede;
            vertical-align: middle;
        }

    </style>
</head>

<body>

                    <div class="well brown" style=" border:0px; padding:0px;">


                        <div class="well-content" style="border:0px; padding:0px; background-color:#FFF; height:500px;">

                            <!--tree begin-->
                            <div class="tree">
                                <ul>
                                    <li>
                                        <span><i class="icon-folder-open"></i> 全部角色</span>
                                        <ul>
                                            <li>
                                                <span><i class="icon-minus-sign"></i> 超级管理员</span>

                                            </li>

                                        </ul>
                                    </li>

                                </ul>
                            </div>

                            <!--tree end-->
                            <div class="tree" style="margin-left: 300px">
                                <ul>
                                    <li>
                                        <span><i class="icon-folder-open"></i> 全部模块</span>
                                        <ul>
                                            <li>
                                                <span><i class="icon-minus-sign"></i> 通用网站</span>
                                                <ul>
                                                    <li>
                                                        <span><i class="icon-minus-sign"></i>系统设置</span>
                                                        <ul>
                                                            <li style="width: 200px">
                                                                <span><i class="icon-leaf"></i>码表管理</span>
                                                            </li>
                                                            <li style="width: 200px">
                                                                <span><i class="icon-leaf"></i>首页信息设置</span>
                                                            </li>
                                                            <li style="width: 200px">
                                                                <span><i class="icon-leaf"></i>默认信息设置</span>
                                                            </li>
                                                            <li style="width: 200px">
                                                                <span><i class="icon-leaf"></i>角色管理</span>
                                                            </li>
                                                            <li style="width: 200px">
                                                                <span><i class="icon-leaf"></i>人员管理</span>
                                                            </li>
                                                            <li style="width: 200px">
                                                                <span><i class="icon-leaf"></i>角色分配</span>
                                                            </li>
                                                            <li style="width: 200px">
                                                                <span><i class="icon-leaf"></i>模块管理</span>
                                                            </li>
                                                            <li style="width: 200px">
                                                                <span><i class="icon-leaf"></i>权限管理</span>
                                                            </li>

                                                        </ul>
                                                    <li style="width: 200px">
                                                        <span><i class="icon-minus-sign"></i> 网站内容管理</span>
                                                        <ul>
                                                            <li style="width: 200px">
                                                                <span><i class="icon-leaf"></i>栏目管理</span>
                                                            </li>
                                                            <li style="width: 200px">
                                                                <span><i class="icon-leaf"></i>审核文章</span>
                                                            </li>
                                                            <li style="width: 200px">
                                                                <span><i class="icon-leaf"></i>文章管理</span>
                                                            </li>
                                                            <li style="width: 200px">
                                                                <span><i class="icon-leaf"></i>留言管理</span>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    </li>
                                                </ul>

                                            </li>


                                        </ul>
                                    </li>

                                </ul>
                            </div>
                            <!--right end-->

    </div>
</div>


<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script src="js/jquery-ui-1.10.3.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/flatpoint_core.js"></script>




</body>
</html>
