<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<base href="<%=basePath%>">  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>瀑布流</title>
<style type="text/css">
/* 标签重定义 */
body{padding:0;margin:0;background:#ddd url(static/images/bg.jpg) repeat;}
img{border:none;}
a{text-decoration:none;color:#444;}
a:hover{color:#999;}
#title{width:600px;margin:20px auto;text-align:center;}
/* 定义关键帧 */
@-webkit-keyframes shade{
	from{opacity:1;}
	15%{opacity:0.4;}
	to{opacity:1;}
}
@-moz-keyframes shade{
	from{opacity:1;}
	15%{opacity:0.4;}
	to{opacity:1;}
}
@-ms-keyframes shade{
	from{opacity:1;}
	15%{opacity:0.4;}
	to{opacity:1;}
}
@-o-keyframes shade{
	from{opacity:1;}
	15%{opacity:0.4;}
	to{opacity:1;}
}
@keyframes shade{
	from{opacity:1;}
	15%{opacity:0.4;}
	to{opacity:1;}
}
/* wrap */
#wrap{width:auto;height:auto;margin:0 auto;position:relative;}
#wrap .box{width:280px;height:auto;padding:10px;border:none;float:left;}
#wrap .box .info{width:280px;height:auto;border-radius:8px;box-shadow:0 0 11px #666;background:#fff;}
#wrap .box .info .pic{width:260px;height:auto;margin:0 auto;padding-top:10px;}
#wrap .box .info .pic:hover{
	-webkit-animation:shade 3s ease-in-out 1;
	-moz-animation:shade 3s ease-in-out 1;
	-ms-animation:shade 3s ease-in-out 1;
	-o-animation:shade 3s ease-in-out 1;
	animation:shade 3s ease-in-out 1;
}
#wrap .box .info .pic img{width:260px;border-radius:3px;}
#wrap .box .info .title{width:260px;height:40px;margin:0 auto;line-height:40px;text-align:center;color:#666;font-size:18px;font-weight:bold;overflow:hidden;}
</style>


<script type="text/javascript" src="static/js/jquery.js"></script>
<script type="text/javascript">
/* function requestJson(){
	
	$.post("${pageContext.request.contextPath}/musicImage/radio.do",
			function (data) {
				return data;
			}, "json");
	
} */
  function requestJson(){
    var result;
    $.ajax({
        dataType:'json',
        url : '${pageContext.request.contextPath}/musicImage/radio.do',
        async:false,//这里选择异步为false，那么这个程序执行到这里的时候会暂停，等待
                    //数据加载完成后才继续执行
        success : function(data){
            result = data;
           }
    });
    return result;
} 
window.onload =function (){
	
	//运行瀑布流主函数
	PBL('wrap','box');
    var data=requestJson();
	//模拟数据
	//var data = [{'src':'1.jpg','title':'This is a title.'},{'src':'2.jpg','title':'This is a title.'},{'src':'3.jpg','title':'This is a title.'},{'src':'4.jpg','title':'This is a title.'},{'src':'5.jpg','title':'This is a title.'},{'src':'6.jpg','title':'This is a title.'},{'src':'7.jpg','title':'This is a title.'},{'src':'8.jpg','title':'This is a title.'},{'src':'9.jpg','title':'This is a title.'},{'src':'10.jpg','title':'This is a title.'}];
	//设置滚动加载
	window.onscroll = function(){
		//校验数据请求
		if(getCheck()){
			var wrap = document.getElementById('wrap');
			for(i in data){
				//创建box
				var box = document.createElement('div');
				box.className = 'box';
				wrap.appendChild(box);
				//创建info
				var info = document.createElement('div');
				info.className = 'info';
				box.appendChild(info);
				//创建pic
				var pic = document.createElement('div');
				pic.className = 'pic';
				info.appendChild(pic);
				//创建img
				var img = document.createElement('img');
				img.src = 'static/img/'+data[i].imageurl;
				img.style.height = 'auto';
				pic.appendChild(img);
				//创建title
				var title = document.createElement('div');
				title.className = data[i].musicname;
				info.appendChild(title);
				//创建a标记
				var a = document.createElement('a');
				a.innerHTML = data[i].musicname;
				title.appendChild(a);
			}
			PBL('wrap','box');
		}
	}
}
/**
* 瀑布流主函数
* @param  wrap	[Str] 外层元素的ID
* @param  box 	[Str] 每一个box的类名
*/
function PBL(wrap,box){
	//	1.获得外层以及每一个box
	var wrap = document.getElementById(wrap);
	var boxs  = getClass(wrap,box);
	//	2.获得屏幕可显示的列数
	var boxW = boxs[0].offsetWidth;
	var colsNum = Math.floor(document.documentElement.clientWidth/boxW);
	wrap.style.width = boxW*colsNum+'px';//为外层赋值宽度
	//	3.循环出所有的box并按照瀑布流排列
	var everyH = [];//定义一个数组存储每一列的高度
	for (var i = 0; i < boxs.length; i++) {
		if(i<colsNum){
			everyH[i] = boxs[i].offsetHeight;
		}else{
			var minH = Math.min.apply(null,everyH);//获得最小的列的高度
			var minIndex = getIndex(minH,everyH); //获得最小列的索引
			getStyle(boxs[i],minH,boxs[minIndex].offsetLeft,i);
			everyH[minIndex] += boxs[i].offsetHeight;//更新最小列的高度
		}
	}
}
/**
* 获取类元素
* @param  warp		[Obj] 外层
* @param  className	[Str] 类名
*/
function getClass(wrap,className){
	var obj = wrap.getElementsByTagName('*');
	var arr = [];
	for(var i=0;i<obj.length;i++){
		if(obj[i].className == className){
			arr.push(obj[i]);
		}
	}
	return arr;
}
/**
* 获取最小列的索引
* @param  minH	 [Num] 最小高度
* @param  everyH [Arr] 所有列高度的数组
*/
function getIndex(minH,everyH){
	for(index in everyH){
		if (everyH[index] == minH ) return index;
	}
}
/**
* 数据请求检验
*/
function getCheck(){
	var documentH = document.documentElement.clientHeight;
	var scrollH = document.documentElement.scrollTop || document.body.scrollTop;
	return documentH+scrollH>=getLastH() ?true:false;
}
/**
* 获得最后一个box所在列的高度
*/
function getLastH(){
	var wrap = document.getElementById('wrap');
	var boxs = getClass(wrap,'box');
	return boxs[boxs.length-1].offsetTop+boxs[boxs.length-1].offsetHeight;
}
/**
* 设置加载样式
* @param  box 	[obj] 设置的Box
* @param  top 	[Num] box的top值
* @param  left 	[Num] box的left值
* @param  index [Num] box的第几个
*/
var getStartNum = 0;//设置请求加载的条数的位置
function getStyle(box,top,left,index){
    if (getStartNum>=index) return;
    $(box).css({
    	'position':'absolute',
        'top':top,
        "left":left,
        "opacity":"0"
    });
    $(box).stop().animate({
        "opacity":"1"
    },999);
    getStartNum = index;//更新请求数据的条数位置
}
</script>


    <!-- Bootstrap -->
    <link href="static/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
 
	<section id="title">
		<h2>柯南音乐</h2>
	</section>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">

	<div id="wrap">
	
		<div class="box">
			<div class="info">
				<div class="pic"><img src="static/img/1.jpg"></div>
				<div class="title"><a href="#">This is a title.</a></div>
			</div>
		</div>
		
		<div class="box">
			<div class="info">
				<div class="pic"><img src="static/img/2.jpg"></div>
				<div class="title"><a href="#">This is a title.</a></div>
			</div>
		</div>
		
		<div class="box">
			<div class="info">
				<div class="pic"><img src="static/img/3.jpg"></div>
				<div class="title"><a href="#">This is a title.</a></div>
			</div>
		</div>
		
		<div class="box">
			<div class="info">
				<div class="pic"><img src="static/img/4.jpg"></div>
				<div class="title"><a href="#">This is a title.</a></div>
			</div>
		</div>
	
		<div class="box">
			<div class="info">
				<div class="pic"><img src="static/img/5.jpg"></div>
				<div class="title"><a href="#">This is a title.</a></div>
			</div>
		</div>
		
		<div class="box">
			<div class="info">
				<div class="pic"><img src="static/img/6.jpg"></div>
				<div class="title"><a href="#">This is a title.</a></div>
			</div>
		</div>
		
		<div class="box">
			<div class="info">
				<div class="pic"><img src="static/img/7.jpg"></div>
				<div class="title"><a href="#">This is a title.</a></div>
			</div>
		</div>
		
		<div class="box">
			<div class="info">
				<div class="pic"><img src="static/img/8.jpg"></div>
				<div class="title"><a href="#">This is a title.</a></div>
			</div>
		</div>
		
		<div class="box">
			<div class="info">
				<div class="pic"><img src="static/img/9.jpg"></div>
				<div class="title"><a href="#">This is a title.</a></div>
			</div>
		</div>
		
		<div class="box">
			<div class="info">
				<div class="pic"><img src="static/img/10.jpg"></div>
				<div class="title"><a href="#">This is a title.</a></div>
			</div>
		</div>
	
	</div>
		</div>
	</div>
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="static/js/bootstrap.min.js"></script>
  </body>
</html>