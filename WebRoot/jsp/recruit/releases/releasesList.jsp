<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>职位发布列表</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/layui/layui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		$(function(){
		    //分页
		    $("#page button").click(function(){
		    	var name = $(this).attr("name");
		    	var currPageNo = parseInt($("#currPageNo").val());
		    	if(name == "shou"){
		    		currPageNo = 1;
		    	}
		    	if(name == "shang"){
		    		currPageNo += -1; 
		    	}
		    	if(name == "xia"){
		    		currPageNo += 1;
		    	}
		    	if(name == "wei"){
		    		currPageNo = $("#totalPageCount").val();
		    	}
		    	if(name == "ok"){
		    		var reg = /^[0-9]*[1-9][0-9]*$/;
		    		if(!reg.test($("#num").val())){return;}
		    		currPageNo = $("#num").val();
		    	}
		    	$("#currPageNo").val(currPageNo);
		    	$("#myForm").submit();
		    });
		});
    </script>
</head>

<body>
<c:if test="${sessionScope.users.role.name=='人事专员' || sessionScope.users.role.name=='人事经理'}">

<form id="myForm" action="releasesList.do" method="post">
	<div class="layui-form-item" style="margin-top:20px;">
		<div class="layui-inline">
			<label class="layui-form-label">所属部门：</label>
			<select class="select" name="dept.id" id="dept">
				<option value="0">不限</option>
				<c:forEach var="dept" items="${deptList}">
					<option value="${dept.id}" <c:if test="${dept.id==releases.dept.id}">selected="selected"</c:if>>${dept.name}</option>
				</c:forEach>
			</select>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">招聘类型：</label>
			<select class="select" name="type">
				<option value="0">不限</option>
				<option value="社会招聘" <c:if test="${releases.type=='社会招聘'}">selected="selected"</c:if>>社会招聘</option>
				<option value="校园招聘" <c:if test="${releases.type=='校园招聘'}">selected="selected"</c:if>>校园招聘</option>
			</select>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">学历要求：</label>
			<select class="select" name="education">
				<option value="0">不限</option>
				<option value="初中及以下" <c:if test="${releases.education=='初中及以下'}">selected="selected"</c:if>>初中及以下</option>
				<option value="中专" <c:if test="${releases.education=='中专'}">selected="selected"</c:if>>中专</option>
				<option value="高中" <c:if test="${releases.education=='高中'}">selected="selected"</c:if>>高中</option>
				<option value="大专" <c:if test="${releases.education=='大专'}">selected="selected"</c:if>>大专</option>
				<option value="本科" <c:if test="${releases.education=='本科'}">selected="selected"</c:if>>本科</option>
				<option value="硕士" <c:if test="${releases.education=='硕士'}">selected="selected"</c:if>>硕士</option>
				<option value="博士及以上" <c:if test="${releases.education=='博士及以上'}">selected="selected"</c:if>>博士及以上</option>
			</select>
		</div>
		<input type="submit" class="layui-btn layui-btn-radius" style="margin-top:-5px;" value="查&nbsp;询" />
		<a class="layui-btn layui-btn-radius" style="margin-top:-5px;" href="addReleases.do?num=1">发&nbsp;布&nbsp;职&nbsp;位</a>
	</div>
	
	<div class="layui-field-box layui-form">
		<table class="layui-table admin-table">
			<thead>
				<tr>
					<th>所属部门</th>
					<th>所属职位</th>
					<th>招聘类型</th>
					<th>招聘人数</th>
					<th>学历要求</th>
					<th>工作年限</th>
					<th style="width:200px;">操作</th>
				</tr>
			</thead>
			<c:if test="${page.pageList.size()==0}">
				<tr>
					<td colspan="7" style="text-align:center;color:red;line-height:50px;">暂未查到相关数据！</td>
				</tr>
			</c:if>
			<c:forEach var="releases" items="${page.pageList}">
				<tr>
					<td>${releases.dept.name}</td>
					<td>${releases.post.name}</td>
					<td>${releases.type}</td>
					<td>${releases.count}</td>
					<td>${releases.education}</td>
					<td>${releases.limit}</td>
					<td><a href="updReleases.do?releasesID=${releases.id}" class="layui-btn layui-btn-normal layui-btn-mini">修改</a>
						<a href="detailReleases.do?id=${releases.id}" class="layui-btn layui-btn-mini">详情</a>
						<a href="delReleases.do?releasesID=${releases.id}" class="layui-btn layui-btn-danger layui-btn-mini" onclick="return confirm('确定要删除吗？');">删除</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<p style="width:100px;margin:0px auto;margin-top:30px;color:red;">${msg}</p>
	</div>

	<div id="page" class="btable-paged" data-type="paged" style="margin:20px auto;width:660px;">
		<input type="hidden" id="currPageNo" value="${page.currPageNo}" name="currPageNo">
		<input type="hidden" id="totalPageCount" value="${page.pageTotalCount}">
		<div class="layui-box layui-laypage layui-laypage-default">
			<span class="layui-laypage-total">
			<button type="button" name="shou">首页</button>
			<button type="button" name="shang">上一页</button>
			<span>${page.currPageNo} / ${page.pageTotalCount}</span>
			<button type="button" name="xia">下一页</button>
			<button type="button" name="wei">尾页</button>
			&#12288;到第<input type="number" id="num">页
			<button type="button" name="ok">确定</button>
			</span>
		</div>
		共&nbsp;${page.totalCount}&nbsp;条记录
	</div>
</form>
</c:if>

<c:if test="${sessionScope.users.role.name!='人事专员' && sessionScope.users.role.name!='人事经理' }">
	<div style="font-size:22px;width:250px;margin:300px auto;color:red;">抱歉，您没有访问权限！</div>
</c:if>
</body>
</html>
