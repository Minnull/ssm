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
<title>个人信息</title>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script>
  function reloadValidateCode(){
   $("#validateCodeImg").attr("src","<%=basePath%>/user/validateCode.do?data=" + new Date() + Math.floor(Math.random()*24));
  }
 </script>
<link href="static/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	<h1>你好，世界！</h1>
    <form action="<%=basePath%>user/login.do" method="post">
    <ul>
        <li>姓　名：<input type="text" name="account" /> </li>
        <li>密　码：<input type="text" name="password" /> </li>
        <li>验证码：<input type="text" name="validateCode" />&nbsp;&nbsp;<img id="validateCodeImg" src="<%=basePath%>user/validateCode.do" />&nbsp;&nbsp;<a href="javascript:void(0)" onclick="reloadValidateCode();">看不清？</a></li>
        <li><input type="submit" value="确认" /> </li>
    </ul>
    </form>

</body>
</html>