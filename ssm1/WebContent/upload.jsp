<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<base href="<%=basePath%>">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>上传图片</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="static/js/jquery.js"></script>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" language="javascript">
	function doUpload() {
		var formData = new FormData($("#uploadForm")[0]);
		$.ajax({
			url : '${pageContext.request.contextPath}/music/upload.do',
			type : 'POST',
			data : formData,
			async : true,
			cache : false,
			contentType : false,
			processData : false,
		    enctype:'multipart/form-data',//注意一定要有该参数 
			dataType:"json",
			success : function(data,status) {
				
				    alert(status);
					window.location.href = "${pageContext.request.contextPath}/fail.jsp";
					alert("上传成功");
				
			},
			error : function(data,status) {
				alert("上传失败"+status);
			}
		});
	}
</script>
</head>
<body>
	<h1>你好，世界！</h1>
	<form id="uploadForm">
		<p>
			指定文件名： <input type="text" name="filename" value="" />
		</p>
		<p>
			上传文件： <input type="file" name="file" /></ p> <input type="button"
				value="上传" onclick="doUpload()" />
	</form>
</body>
</html>