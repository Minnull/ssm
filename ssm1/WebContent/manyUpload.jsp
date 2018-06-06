<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>

<base href="<%=basePath%>">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>

<!-- 引用控制层插件样式 -->

<link rel="stylesheet" href="static/css/zyUpload.css" type="text/css">

<script src="http://www.lanrenzhijia.com/ajaxjs/jquery.min.js"></script>

<!-- 引用核心层插件 -->

<script src="static/js/zyFile.js"></script>

<!-- 引用控制层插件 -->

<script src="static/js/zyUpload.js"></script>

<!-- 引用初始化JS -->

<script src="static/js/jq22.js"></script>
<title>多图片上传</title>
</head>
<body>
	<h1>你好，世界！</h1>

	<h1 style="text-align: center;">Html5 Upload示例</h1>

	<div id="demo" class="demo"></div>
</body>
</html>