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

<title>My JSP 'print.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!--主要样式-->
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/bootstrap.css" rel="stylesheet">
<link href="js/bootstrap.js" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/stylesheet.css" rel="stylesheet">
<script type="text/javascript">
	$(function() {
		$('.tree li:has(ul)').addClass('parent_li').find(' > span').attr(
				'title', 'Collapse this branch');
		$('.tree li.parent_li > span').on(
				'click',
				function(e) {
					var children = $(this).parent('li.parent_li').find(
							' > ul > li');
					if (children.is(":visible")) {
						children.hide('fast');
						$(this).attr('title', 'Expand this branch')
								.find(' > i').addClass('icon-plus-sign')
								.removeClass('icon-minus-sign');
					} else {
						children.show('fast');
						$(this).attr('title', 'Collapse this branch').find(
								' > i').addClass('icon-minus-sign')
								.removeClass('icon-plus-sign');
					}
					e.stopPropagation();
				});
	});
</script>
<style type="text/css">
.tree {
	width: 200px;
	height: 500px;
	background-color: rgb(238, 243, 247);
	float: left;
	overflow-y: scroll;
	padding: 0px;
	border: 0px;
	border-radius: 0px;
}

.table th,.table td {
	padding: 15.5px;
	line-height: 20px;
	text-align: left;
	vertical-align: top;
	border-top: 1px solid #dedede;
	vertical-align: middle;
}
</style>

<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(function() {
		$('.tree li:has(ul)').addClass('parent_li').find(' > span').attr(
				'title', 'Collapse this branch');
		$('.tree li.parent_li > span').on(
				'click',
				function(e) {
					var children = $(this).parent('li.parent_li').find(
							' > ul > li');
					if (children.is(":visible")) {
						children.hide('fast');
						$(this).attr('title', 'Expand this branch')
								.find(' > i').addClass('icon-plus-sign')
								.removeClass('icon-minus-sign');
					} else {
						children.show('fast');
						$(this).attr('title', 'Collapse this branch').find(
								' > i').addClass('icon-minus-sign')
								.removeClass('icon-plus-sign');
					}
					e.stopPropagation();
				});
	});
</script>
</head>

<body>
	<div id="content">
		<!-- Content start -->
		<div class="inner_content">
			<div class="widgets_area">
				<div class="row-fluid">
					<div class="span12">
						<div class="daohanglink" style="">
							<span class="daohang"></span> <span>首页</span><span></span> <span>用户管理</span><span></span>
							<span>权限管理</span>
						</div>
						<div class="well brown" style=" border:0px; padding:0px;">
							<div class="well-content"
								style="border:0px; padding:0px; background-color:#FFF; height:500px;">
								<!--tree begin-->
								<div class="tree">
									<ul>
										<li><span><i class="icon-folder-open"></i> 所有栏目</span>
											<ul>
												<li><span><i class="icon-minus-sign"></i> <a href="jsp/homePage.jsp">首页</a></span>
													<ul>
														<li><span><i class="icon-leaf"></i>机构公司</span></li>
													</ul></li>
												<li><span><i class="icon-minus-sign"></i> 课程介绍</span>
													<ul>
														<li><span><i class="icon-leaf"></i>机构公司</span></li>
													</ul></li>
												<li><span><i class="icon-minus-sign"></i> 教学团队</span>
													<ul>
														<li><span><i class="icon-leaf"></i>机构公司</span></li>
													</ul></li>
												<li><span><i class="icon-minus-sign"></i> 课程建设</span>
													<ul>
														<li><span><i class="icon-leaf"></i>机构公司</span></li>
													</ul></li>
												<li><span><i class="icon-minus-sign"></i> 课程资源</span>
													<ul>
														<li><span><i class="icon-leaf"></i>机构公司</span></li>
													</ul></li>
												<li><span><i class="icon-minus-sign"></i> 课程研究</span>
													<ul>
														<li><span><i class="icon-leaf"></i>机构公司</span></li>
													</ul></li>
											</ul></li>

									</ul>
								</div>

								<!--tree end-->
								<!--right begin-->
								<div class="table table-border table-bordered radius">
									<s:action name="viewArtical" namespace="/login"></s:action>
									<table class="class1">
										<thead>
											<tr>

												<th width="5%" style="text-align: center"><input
													type="checkbox"></th>
												<th width="10%" style="text-align: center">文章标题</th>
												<th width="13%" style="text-align: center">作者</th>
												<th width="12%" style="text-align: center">栏目名称</th>
												<th width="20%" style="text-align: center">创建日期</th>
												<th width="10%" style="text-align: center">是否顶置</th>
												<th width="30%" style="text-align: center">操作</th>
											</tr>
										</thead>
										<tbody>

											<s:iterator value="#request.allArticleList">
												<tr>
													<td style="text-align: center"><input type="checkbox"></td>
													<td style="text-align: center"><s:property
															value="articleTitle" /></td>
													<td style="text-align: center"><s:property
															value="articleAuthor" /></td>
													<td style="text-align: center"><s:property
															value="columnName" /></td>
													<td style="text-align: center"><s:property
															value="createDate" /></td>
													<td style="text-align: center"><s:property
															value="isStick" /></td>
		<td>
			<a href="/CourseDesigner/login/selectArticleById.action?
			id=<s:property value="id"/>
			&articleTitle=<s:property value="articleTitle"/>
			" >查看</a>
			<a  href="/CourseDesigner/login/updateArticle.action?id=<s:property value="id"/>">编辑</a>
			<a
			 target=“_top” href="/CourseDesigner/login/deleteArticle.action?id=<s:property value="id"/>">删除</a>
		</td>
												</tr>
											</s:iterator>
										</tbody>
									</table>
									<a  target=“_top” href="/CourseDesigner/login/viewArtical.action?page=1">第一页</a>
									<a  target=“_top” href="/CourseDesigner/login/viewArtical.action?page=2">第二页 </a>
								</div>


								<!--right end-->

							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>


	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/jquery-ui-1.10.3.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/flatpoint_core.js"></script>




</body>
</html>
