<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<base href="<%=basePath%>">
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>

    <link href="static/css/bootstrap.min.css" rel="stylesheet">
  </head>

	<body background="static/img/9.jpg"
style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;"
text="#68228B" onload="setInterval('clock()',1000)">

		<script src="static/js/bootstrap.min.js"></script>

	<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h3>
				柯南音乐
			</h3><br/>
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						 <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
					</button> <a class="navbar-brand" href="#">首页</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="music.jsp">音乐</a>
						</li>
						<li>
							<a href="#">mv</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">表白墙<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">Action</a>
								</li>
								<li>
									<a href="#">Another action</a>
								</li>
								<li>
									<a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">Separated link</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">One more separated link</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> 
						<button type="submit" class="btn btn-default">
							搜索
						</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="#">链接</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">个人信息<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">登录</a>
								</li>
								<li>
									<a href="#">换个账号</a>
								</li>
								<li>
									<a href="#">注销</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">修改信息</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				
			</nav>
			<div class="jumbotron">
				<h2>
					推荐
				</h2>
				<p>
					月在身后约在心里头
盼多久盼到这个时候
人独守不忘来世
月圆人间相隔不再遥远
如何相爱如何手放开
思念纵使汇成了河
离别对月人渐消瘦
每一天尽是想念
不知天上宫阙今夕是何年
爱是一万年一瞬间
什么都不会变
我爱你三个字
命中注定一辈子
不枉
阴晴圆缺读出我的心事
月在身后约在心里头
盼多久盼到这个时候
人独守不忘来世
月圆人间相隔不再遥远
月儿高悬月盼人团圆
远远的望向那故乡
依稀记得那时模样
每一天满满想念
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="#">Learn more</a>
				</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<h2>
				歌曲一
			</h2>
			<p>
				Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
			</p>
			<p>
				<a class="btn" href="#">View details »</a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>
				歌曲二
			</h2>
			<p>
				Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
			</p>
			<p>
				<a class="btn" href="#">View details »</a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>
				歌曲三
			</h2>
			<p>
				Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
			</p>
			<p>
				<a class="btn" href="#">View details »</a>
			</p>
		</div>
	</div>
</div>

<h4><center>Copyright © 柯南   版权所有</center></h4>
	</body>
</html>