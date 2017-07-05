<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<title>薪酬标准审核</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/layui/layui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/sysset.js"></script>
</head>

<body>
	<div style="width:600px;margin:20px auto;">
		
		<div class="layui-form-item">
			<label class="layui-form-label">标准名称：</label>
			<div class="layui-input-inline">
				<label style="line-height:38px;">${stan.name }</label>
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">标准总额：</label>
			<div class="layui-input-inline">
				<label style="line-height:38px;"><fmt:formatNumber type="number" value="${stan.amount }" pattern="0.00" maxFractionDigits="2"/></label>
			</div>
		</div>
		<hr/>
		
		<div class="layui-field-box layui-form" style="width:600px;">
			<table class="layui-table admin-table">
				<thead>
					<tr>
						<th width="40">项目编号</th>
						<th width="40">项目名称</th>
						<th width="20">项目金额(元)</th>
					</tr>
				</thead>
				<c:forEach var="staDet" items="${staDet }">
					<tr>
						<td>${staDet.project.id }</td>
						<td>${staDet.project.name }</td>
						<td><fmt:formatNumber type="number" value="${staDet.money }" pattern="0.00" maxFractionDigits="2"/></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<hr/>
		
		<form action="standardAudit.do" method="post" id="staAudForm">
		
			<div class="layui-form-item">
				<label class="layui-form-label">审核结果：</label>
				<select class="select" name="state" id="state">
					<option value="0">请选择状态</option>
					<option>审核通过</option>
					<option>驳回</option>
				</select>
				<span class="msg">&nbsp;*&nbsp;</span>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">审核意见：</label>
				<div class="layui-input-block">
					<textarea placeholder="请输入内容" class="layui-textarea" maxlength="50" name="opinion"></textarea>
				</div>
			</div>
			
			<input type="hidden" name="person" value="${sessionScope.users.realName}" />
			<input type="hidden" name="id" value="${stan.id }"/>
			<input type="hidden" name="name" value="${stan.name }"/>
			<input type="hidden" name="amount" value="${stan.amount }"/>
			
			<input type="submit" value="提&nbsp;交&nbsp;审&nbsp;核" class="layui-btn layui-btn-radius" style="margin-top:20px;margin-left:100px;" />
			<a href="standardList.do" class="layui-btn layui-btn-radius" style="margin-top:20px">返&nbsp;&nbsp;回</a>
		
		</form>
		
	</div>
</body>
</html>
