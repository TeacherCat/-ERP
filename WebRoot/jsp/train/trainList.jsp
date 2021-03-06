<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
	<title>培训计划列表</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/layui/layui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
		$(function(){
			//日期
		    $("#begin").click(function(){
		        WdatePicker({
		            highLineWeekDay:true //周末高亮
		            ,readOnly:true      //只读，只可用控件input中 修改内容
		            ,dateFmt:'yyyy-MM-dd 00:00:00'
		        });
		    });
		    //日期
		    $("#end").click(function(){
		        WdatePicker({
		            highLineWeekDay:true //周末高亮
		            ,readOnly:true      //只读，只可用控件input中 修改内容
		            ,dateFmt:'yyyy-MM-dd 23:59:59'
		        });
		    });
		    
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
		    		var reg = new RegExp("^[0-9]*[1-9][0-9]*$");
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

<form id="myForm" action="trainList.do" method="post">
	<div class="layui-form-item" style="margin-top:20px;">
		<div class="layui-inline">
			<label class="layui-form-label">培训名称：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" name="name" value="${train.name}" />
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">登记时间：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" id="begin" name="startTime" value="${train.startTime}">
			</div>
			<span class="layui-form-label" style="width:5px;">至</span>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" id="end" name="endTime" value="${train.endTime}">
			</div>
		</div>
		<input type="submit" class="layui-btn layui-btn-radius" style="margin-top:-5px;" value="查&nbsp;询" />
		
		<c:if test="${sessionScope.users.role.name=='人事专员'}">
			<a class="layui-btn layui-btn-radius" style="margin-top:-5px;" href="<%=request.getContextPath()%>/jsp/train/trainAdd.jsp">新&nbsp;增&nbsp;计&nbsp;划</a>
		</c:if>
	</div>
	
	<div class="layui-field-box layui-form">
		<table class="layui-table admin-table">
			<thead>
				<tr>
					<th width="25%">培训名称</th>
					<th width="15%">培训讲师</th>
					<th width="15%">登记人</th>
					<th width="20%">登记时间</th>
					<th width="10%">培训状态</th>
					<th width="20%">操作</th>
				</tr>
			</thead>
			<c:if test="${page.pageList.size()==0}">
				<tr>
					<td colspan="6" style="text-align:center;color:red;line-height:50px;">暂未查到相关数据！</td>
				</tr>
			</c:if>
			<c:forEach var="train" items="${page.pageList}">
				<tr>
					<td>${train.name}</td>
					<td>${train.lecturer}</td>
					<td>${train.registrar}</td>
					<td>${fn:substring(train.time, 0, 10)}</td>
					<td>${train.state}</td>
					<td>
						<a href="detailTrain.do?trainID=${train.id}" class="layui-btn layui-btn-mini">详情</a>
						
						<c:if test="${(train.state=='起草' || train.state=='打回') && sessionScope.users.role.name=='人事专员' }">
							<a href="updTrain.do?trainID=${train.id}" class="layui-btn layui-btn-normal layui-btn-mini">修改</a>
						</c:if>
						
						<c:if test="${train.state=='待审核' && sessionScope.users.role.name=='人事经理'}">
							<a href="auditTrain.do?trainID=${train.id}" class="layui-btn layui-btn-mini">审核</a>
						</c:if>
						
						<c:if test="${train.state=='审核通过' && sessionScope.users.role.name=='人事专员'}">
							<a href="backTrain.do?trainID=${train.id}" class="layui-btn layui-btn-mini">反馈</a>
						</c:if>
						
						<c:if test="${(train.state=='拒绝' || train.state=='已结束') && (sessionScope.users.role.name=='人事经理')}">
							<a href="delTrain.do?id=${train.id}&currPageNo=${page.currPageNo}" class="layui-btn layui-btn-danger layui-btn-mini" onclick="return confirm('确认删除吗?');">删除</a>
						</c:if>
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
