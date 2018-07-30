<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加图书</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {background: rgb(254,238,189);}
</style>
  </head>
  
  <body>
    <h1>添加新闻</h1>
    <p style="font-weight: 900; color: red">${msg}</p>
    
    <form action="${pageContext.request.contextPath}/home/addHomeHou.do"
    		enctype="multipart/form-data" method="post">
    	id：<input style="width: 150px; height: 20px;" type="text" name="id"/><br/>
    	gid：<select style="width: 150px; height: 20px;" name="gid">
    		<c:forEach items="${genres }" var="category">
    		<option value="${category.gid }">${category.gname }</option>
    		</c:forEach>
    	</select>
    	<br/>
    	时间：<input style="width: 150px; height: 20px;" type="text" name="time"/><br/>
    	内容：<input style="width: 150px; height: 20px;" type="text" name="content"/><br/> 
    	状态：<input style="width: 150px; height: 20px;" type="text" name="status"/><br/>
    	文件上传：<input style="width: 223px; height: 20px;" type="file" name="file"/><br/>
    	<input type="submit" value="添加新闻"/>
    </form>
  </body>
</html>
