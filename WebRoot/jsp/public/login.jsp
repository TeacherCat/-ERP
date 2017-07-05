<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>登录</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#myForm").submit(function(){
				var flg = true;
				if($("input[name='name']").val()==""){
					$("input[name='name']").attr("placeholder","登录名不能为空！");
					flg = false;
				}
				if($("input[name='password']").val()==""){
					$("input[name='password']").attr("placeholder","密码不能为空！");
					flg = false;
				}
				if($("input[name='number']").val()==""){
					$("input[name='number']").attr("placeholder","验证码不能为空！");
					flg = false;
				}
				return flg;
			});
		});
	</script>
</head>

<body class="beg-login-bg">
	<div class="beg-login-box">
		
		<h1>企 业 人 力 资 源 管 理 系 统</h1>
		<div class="beg-login-main">
			<form id="myForm" action="<%=request.getContextPath()%>/login.do" class="layui-form" method="post">
				<div class="layui-form-item">
					<label class="beg-login-icon">
						<i class="layui-icon">&#xe612;</i>
					</label>
					<input type="text" placeholder="输入登录名" class="layui-input" name="name">
				</div>
				<div class="layui-form-item">
					<label class="beg-login-icon">
						<i class="layui-icon">&#xe642;</i>
					</label>
					<input type="password" placeholder="输入密码" class="layui-input" name="password">
				</div>
				<div class="layui-form-item">
					<label class="beg-login-icon">
						<i class="layui-icon">&#xe605;</i>
					</label>
					<input type="text" placeholder="输入验证码" class="layui-input" style="width:150px;display:inline;" name="number">
					<img src="<%=request.getContextPath()%>/jsp/public/Number.jsp" id="changeCode" title="图片看不清？点击重新得到验证码" style="cursor:pointer;margin-left:25px;"/>
				</div>
				<div class="layui-form-item" style="margin-left:80px;">
					${msg}
				</div>
				<div class="layui-form-item">
					<div class="beg-pull-right">
						<input type="submit" value="登&#12288;&#12288;录&nbsp;&nbsp;&nbsp;&nbsp;" class="layui-btn layui-btn-primary" />
						<input type="reset" value="重&#12288;&#12288;置&nbsp;&nbsp;&nbsp;&nbsp;" class="layui-btn layui-btn-primary" />
					</div>
					<div class="beg-clear"></div>
				</div>
				<div class="layui-form-item">
					<div class="beg-pull-right">
						<a href="<%=request.getContextPath()%>/jsp/public/findpassword.jsp" style="color:#1AA094;cursor:pointer;">忘记密码？点我找回！</a>
					</div>
					<div class="beg-clear"></div>
				</div>
			</form>
		</div>
		
		<p class="footer">&nbsp;©&nbsp;版权所有&nbsp;&nbsp;&nbsp;&nbsp;北大青鸟 3T126 开发小组</p>
		
	</div>
</body>
</html>