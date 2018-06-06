<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<base href="<%=basePath%>">  
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>登录网站</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
    <script language='javascript' src="static/js/jq22.js"></script>
  </head>

  <body background="static/img/2.jpg"
style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;"
text="#68228B" onload="setInterval('clock()',1000)">

<!-- 背景div -->
	<div id="mydiv"></div>
	<script type="text/javascript">
	function __changeUserName(of){
		  var username=$('#'+of).val();
		  if(of=='email'){
			  if (username.search(/^[\w\.+-]+@[\w\.+-]+$/) == -1) {
					showTooltips('email_input','请输入正确的Email地址');
					return;
			}					
		  }
		  else{
			  if(username=='' || !isMobilePhone(username)) {
				  showTooltips('mobile_input','请输入正确的手机号码');
				  return;
			  }
		  }
		}
		function checkPwd1(pwd1) {
			if (pwd1.search(/^.{6,20}$/) == -1) {
				showTooltips('password1_input','密码为空或位数太少');
			}else {
				hideTooltips('password1_input');
			}
		}	

		function checkEmail(email) {
			if (email.search(/^.+@.+$/) == -1) {
				showTooltips('email_input','邮箱格式不正确');
			}else {
				hideTooltips('email_input');
			}
		}

		function checkAuthCode(authcode) {
			if (authcode == '' || authcode.length != 6) {
				showTooltips('code_input','验证码不正确');
			}else {
				hideTooltips('code_input');
		 }     
		}

		function check() {
			hideAllTooltips();
			var ckh_result = true;
			if ($('#email').val() == '') {
			showTooltips('email_input','邮箱不能为空');
			ckh_result = false;
		  }
		  if ($('#password1').val() == '') {
			showTooltips('password1_input','密码不能为空');
			ckh_result = false;
		  }      
		  if($('#mobile').val()=='' || !isMobilePhone($('#mobile').val())) {            
			  showTooltips('mobile_input','手机号码不正确');
			  ckh_result = false;
		  }
		  if ($('#code').val() == '' || $('#code').val().length !=6) {
			showTooltips('code_input','验证码不正确');
			ckh_result = false;
		  }
		}
		function checkMobilePhone(telphone) {
			if(telphone=='' || !isMobilePhone(telphone)) {
			showTooltips('mobile_input','请输入正确的手机号码');
		  }else{
			hideTooltips('mobile_input');
		  }
		}
		function isMobilePhone(value) {
		if(value.search(/^(\+\d{2,3})?\d{11}$/) == -1)
		return false;
		else
		return true;
		} 
		</script>
	<script type="text/javascript">

	 function reloadValidateCode(){
		   $("#validateCodeImg").attr("src","<%=basePath%>/user/validateCode.do?data=" + new Date() + Math.floor(Math.random()*24));
		  }
		window.onload = function() {
			 $("#register1").hide();
		        
		     $("#register").click(function(){ $("#login").hide();$("#register1").show();;});
		     $("#register2").click(function(){ $("#login").show();$("#register1").hide();;});
		   
		    //配置
		    var config = {
		        vx: 4,	//小球x轴速度,正为右，负为左
		        vy: 4,	//小球y轴速度
		        height: 2,	//小球高宽，其实为正方形，所以不宜太大
		        width: 2,
		        count: 200,		//点个数
		        color: "121, 162, 185", 	//点颜色
		        stroke: "130,255,255", 		//线条颜色
		        dist: 6000, 	//点吸附距离
		        e_dist: 20000, 	//鼠标吸附加速距离
		        max_conn: 10 	//点到点最大连接数
		    }

		    //调用
		    CanvasParticle(config);
		}
	</script>
	<script type="text/javascript" src="canvas-particle.js"></script>
    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-left" ><font color="#FFFFFF">柯南音乐</font></h3>
				<br />
				<br />
				<br />
				<br />
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="jumbotron">
					<p>
						我看过沙漠下暴雨 看过大海亲吻鲨鱼<br /> 
						看过黄昏追逐黎明 没看过你<br />
						 我知道美丽会老去 生命之外还有生命<br />
						我知道风里有诗句 不知道你<br /> 
						我听过荒芜变成热闹 听过尘埃掩埋城堡<br /> 
						听过天空拒绝飞鸟 没听过你<br />
						我明白眼前都是气泡 安静的才是苦口良药<br /> 
						明白什么才让我骄傲 不明白你<br />
						 我拒绝更好更圆的月亮
						拒绝未知的疯狂<br /> 
						拒绝声色的张扬 不拒绝你<br />
					</p>
				
			</div>
		</div>
		<div id="login" class="col-md-6">
			<form  class="form-horizontal" role="form" action="user/login.do" method="post">
				<div class="form-group">
					 <h3 class="text-center"><font color="#FFFFFF">登录网站</font></h3>
					 <br/> <br/> <br/> 
					<label  class="col-sm-2 control-label">
						<font color="#FFFFFF">账号</font>
					</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="username" id="username">
					</div>
				</div>
				<div class="form-group">
					 
					<label class="col-sm-2 control-label">
						<font color="#FFFFFF">密码</font>
					</label>
					<div class="col-sm-8">
						<input type="password" class="form-control" name="userpwd" id="userpwd">
					</div>
				</div>
				
			
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							
							 <li><font color="#FFFFFF">验证码：</font><input type="text" name="validateCode" />&nbsp;&nbsp;<img id="validateCodeImg" src="<%=basePath%>user/validateCode.do" />&nbsp;&nbsp;<a href="javascript:void(0)" onclick="reloadValidateCode();">看不清？</a></li>
							<br/> 
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 
						<button type="submit" class="btn btn-default">
						            登录
						</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button id="register" type="button" class="btn btn-default">
							注册
						</button>
					</div>
				</div>
					<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							 
							<label>
								<input type="checkbox"> <font color="#FFFFFF">记住我</font>
							</label>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div id="register1" class="col-md-6" >
		  <form id="form" class="form-horizontal" action="user/register.do" method="post" onSubmit="return check();">
          <div id="form_submit" class="form_submit">
              <div class="form-group">
               <h3 class="text-center"><font color="#FFFFFF">注册账号</font></h3>
					 <br/> 
              <label class="col-sm-3 control-label">
                <label class="required title"><font color="#FFFFFF">手机号码</font></label>
                </label>
                <label class="col-sm-6">
                  <input class="form-control" type="text" id="mobile" name="username" maxLength="11" value="" onblur="__changeUserName('mobile');">
                </label>
              </div>
              <div class="form-group">
              <label class="col-sm-3 control-label">
                <label class="required title"><font color="#FFFFFF">邮箱</font></label>
               </label>
                <label class="col-sm-6">
                  <input class="form-control" type="text" id="email" name="email" maxLength="50" value="" onblur="__changeUserName('email');">
               </label>
              </div>
               <div class="form-group">
              <label class="col-sm-3 control-label">
                <label class="required title"><font color="#FFFFFF">密码</font></label>
               </label>
                <label class="col-sm-6">
                  <input class="form-control" type="password" id="password1" name="userpwd" maxLength="20" value="" onblur="checkPwd1(this.value);" />
                </label>
                </div>
                 <div class="form-group">
                 <label class="col-sm-3 control-label">
                <label class="required title"><font color="#FFFFFF">重复密码</font></label>
               </label>
                <label class="col-sm-6">
                  <input class="form-control" type="password" id="password1" name="userpwd" maxLength="20" value="" onblur="checkPwd1(this.value);" />
                </label>
                </div>
                 <div class="form-group">
              <label class="col-sm-3 control-label">
                <label class="required title"><font color="#FFFFFF">短信验证码</font></label>
                </label>
                <label class="col-sm-3">
                  <input class="form-control" type="text" id="code" name="code" max_length="6" value="" onblur="checkAuthCode(this.value);">
                </label>
                </div>
          </div>
          <div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							
							 <li><font color="#FFFFFF">验证码：</font><input type="text" name="validateCode" />&nbsp;&nbsp;<img id="validateCodeImg" src="<%=basePath%>user/validateCode.do" />&nbsp;&nbsp;<a href="javascript:void(0)" onclick="reloadValidateCode();">看不清？</a></li>
							<br/> 
						</div>
					</div>
				</div>
           <div class="form-group">
			<div class="col-sm-offset-3 col-sm-10">
              <input id="submit" type="submit" value="注册" class="btn btn-default">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input id="register2" type="button" value="登录" class="btn btn-default">
         </div>
          </div>
        </form>
		</div>
	</div>
</div>
    <script type="text/javascript" src="static/js/canvas-particle.js"></script>
    <script src="static/js/jquery.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <script src="static/js/scripts.js"></script>
  </body>
</html>