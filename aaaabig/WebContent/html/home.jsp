<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<title>首页</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/x-admin.css" media="all">
</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>网站信息管理</cite></a>
			<a><cite>首页</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		${xiaoxi}
		<form class="layui-form x-center" action="" style="width: 500px">
			<div class="layui-form-pane">
				<!-- <div class="layui-form-home"> -->
				<!-- 	<div class="layui-input-inline" style="width: 400px">
						<input type="text" name="homename" placeholder="搜索内容"
							autocomplete="off" class="layui-input">
					</div> -->
					<!-- <div class="layui-input-inline" style="width: 80px">
						<button class="layui-btn" lay-submit="" lay-filter="sreach">
							<i class="layui-icon">&#xe615;</i>
						</button>
					</div> -->
				</div>
			</div>
		</form>
		<xblock>
	<!-- 	<button class="layui-btn layui-btn-danger" onclick="delAll()">
			批量删除
			<button> -->
				<i class="layui-icon">&#xe608;</i><a
					href="${pageContext.request.contextPath}/home/queryAllGenre.do">添加</a>
			</button>
		<span class="x-right" style="line-height: 25px">共有数据：${page.totalRows}
			条</span></xblock>
		</xblock>
		<table class="layui-table">
			<thead>
				<tr>
					<th width="5%"><input type="checkbox" name="" value="">
					</th>
					<th width="5%">序号</th>
					<th width="9%">模块</th>
					<th width="5%">标题</th>
					<th width="8%">图片</th>
					<th width="9%">上传时间</th>
					<th width="40%">内容</th>
					<th width="9%">显示状态</th>
					<th width="10%">操作</th>
				</tr>
			</thead>
			<tbody id="x-img">
				<c:forEach items="${page.datas }" var="home">
					<tr>
						<td><input type="checkbox" value="1" name=""></td>
						<td>${home.id}</td>
						<td>${home.genre.gname}</td>
						<td>${home.topic}</td>
						<td align="left"><img
							src="${pageContext.request.contextPath}/${home.filesrc}"
							alt="图片网址出错！" width="56" height="56"></td>
						<td>${home.time}</td>
						<td>${home.content}</td>
						<td class="td-status"><span
							class="layui-btn layui-btn-normal layui-btn-mini">${home.status}
						</span></td>
						<td class="td-manage"><a style="text-decoration: none"
							onclick="banner_stop(this,'10001')" href="javascript:;"
							title="不显示"> <i class="layui-icon">&#xe601;</i>
						</a> <a title="修改" href="${pageContext.request.contextPath}/home/modifyHomeQian.do"
							class="ml-5" style="text-decoration: none"> <i
								class="layui-icon">&#xe642;</i>
						</a> <a title="删除" href="${pageContext.request.contextPath}/home/removeHome.do?id=${home.id}" 
							style="text-decoration: none"> <i class="layui-icon">&#xe640;</i>
						</a></td>
					</tr>
				</c:forEach>
				
							<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
      <c:choose>
      	<%-- 共计一页的情况 --%>
      	<c:when test="${page.totalPages == 1 }">
	      <tr>
	        <td colspan="5" align="right" class="td07"><img src="../images/1.gif" width="4" height="5" align="absmiddle"> 首页　 <img src="../images/2.gif" width="3" height="5" align="absmiddle"> 上一页　 <img src="../images/2-2.gif" width="3" height="5" align="absmiddle"> 下一页　 <img src="../images/3.gif" width="4" height="5" align="absmiddle"> 末页　　共 ${page.pageno }/${page.totalPages } 页 ${page.totalRows } 条记录</td>
	      </tr>
      	</c:when>
      	<%-- 当前页为第一页的情况 --%>
      	<c:when test="${page.pageno == 1 }">
	      <tr>
	        <td colspan="5" align="right" class="td07"><img src="../images/1.gif" width="4" height="5" align="absmiddle"> 首页　 <img src="../images/2.gif" width="3" height="5" align="absmiddle"> 上一页　 <img src="../images/2-2.gif" width="3" height="5" align="absmiddle"> <a href="../home/homeManage.do?pageno=${page.pageno + 1 }">下一页</a>　 <img src="../images/3.gif" width="4" height="5" align="absmiddle"> <a href="../home/homeManage.do?pageno=${page.totalPages }">末页</a>　　共 ${page.pageno }/${page.totalPages } 页 ${page.totalRows } 条记录</td>
	      </tr>
      	</c:when>
      	<%-- 当前页为最后一页的情况 --%>
      	<c:when test="${page.pageno == page.totalPages }">
	      <tr>
	        <td colspan="5" align="right" class="td07"><img src="../images/1.gif" width="4" height="5" align="absmiddle"> <a href="../home/homeManage.do?pageno=1">首页</a>　 <img src="../images/2.gif" width="3" height="5" align="absmiddle"> <a href="../home/homeManage.do?pageno=${page.pageno - 1 }">上一页</a>　 <img src="../images/2-2.gif" width="3" height="5" align="absmiddle"> 下一页　 <img src="../images/3.gif" width="4" height="5" align="absmiddle"> 末页　　共 ${page.pageno }/${page.totalPages } 页 ${page.totalRows } 条记录</td>
	      </tr>
      	</c:when>
      	<%-- 当前页为中间页的情况 --%>
      	<c:otherwise>
	      <tr>
	        <td colspan="5" align="right" class="td07"><img src="../images/1.gif" width="4" height="5" align="absmiddle"> <a href="../home/homeManage.do?pageno=1">首页</a>　 <img src="../images/2.gif" width="3" height="5" align="absmiddle"> <a href="../home/homeManage.do?pageno=${page.pageno - 1 }">上一页</a>　 <img src="../images/2-2.gif" width="3" height="5" align="absmiddle"> <a href="../home/homeManage.do?pageno=${page.pageno + 1 }">下一页</a>　 <img src="../images/3.gif" width="4" height="5" align="absmiddle"> <a href="../home/homeManage.do?pageno=${page.totalPages }">末页</a>　　共 ${page.pageno }/${page.totalPages } 页 ${page.totalRows } 条记录</td>
	      </tr>
      	</c:otherwise>
      </c:choose> 
				
</tbody>
</html>
